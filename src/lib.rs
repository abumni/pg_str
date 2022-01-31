use pgx::*;

extern crate inflector;
use inflector::cases::{
    camelcase, kebabcase, pascalcase, screamingsnakecase, snakecase, titlecase,
};
use inflector::string::{pluralize, singularize};
use pulldown_cmark::{html, Options, Parser};
use str_slug::StrSlug;

pg_module_magic!();

#[pg_extern]
fn return_static() -> &'static str {
    "This is a static string xxx"
}

#[pg_extern]
fn lower(input: &str) -> String {
    input.to_lowercase()
}

#[pg_extern]
fn upper(input: &str) -> String {
    input.to_uppercase()
}

#[pg_extern]
fn slug(input: &str, sep: char) -> String {
    let mut slug = StrSlug::new();
    slug.separator = sep;
    slug.slug(input)
}
#[pg_extern]
fn singular(input: &str) -> String {
    singularize::to_singular(input)
}
#[pg_extern]
fn plural(input: &str) -> String {
    pluralize::to_plural(input)
}
#[pg_extern]
fn title(input: &str) -> String {
    titlecase::to_title_case(input)
}
#[pg_extern]
fn kebab(input: &str) -> String {
    kebabcase::to_kebab_case(input)
}
#[pg_extern]
fn snake(input: &str) -> String {
    snakecase::to_snake_case(input)
}
#[pg_extern]
fn studly(input: &str) -> String {
    pascalcase::to_pascal_case(input)
}
#[pg_extern]
fn scream(input: &str) -> String {
    screamingsnakecase::to_screaming_snake_case(input)
}

#[pg_extern]
fn markdown(input: &str) -> String {
    // Set up options and parser. Strikethroughs are not part of the CommonMark standard
    // and we therefore must enable it explicitly.
    let mut options = Options::empty();
    options.insert(Options::ENABLE_STRIKETHROUGH);
    let parser = Parser::new_ext(input, options);

    // Write to String buffer.
    let mut html_output: String = String::with_capacity(input.len() * 3 / 2);
    html::push_html(&mut html_output, parser);
    html_output
}

#[pg_extern]
fn substr(input: &str, start: i32, end: i32) -> &str {
    &input[start as usize..end as usize]
}

#[pg_extern]
fn append(mut input: String, extra: &str) -> String {
    input.push_str(extra);
    input.push('x');
    input
}

#[pg_extern]
fn split(input: &'static str, pattern: &str) -> Vec<&'static str> {
    input.split_terminator(pattern).into_iter().collect()
}

#[pg_extern]
fn split_set(
    input: &'static str,
    pattern: &'static str,
) -> impl std::iter::Iterator<Item = &'static str> {
    input.split_terminator(pattern).into_iter()
}

#[cfg(any(test, feature = "pg_test"))]
#[pg_schema]
mod tests {
    use pgx::*;

    #[pg_test]
    fn test_it() {
        // do testing here.
        //
        // #[pg_test] functions run *inside* Postgres and have access to all Postgres internals
        //
        // Normal #[test] functions do not
        //
        // In either case, they all run in parallel
    }
}

#[cfg(test)]
pub mod pg_test {
    pub fn setup(_options: Vec<&str>) {
        // perform one-off initialization when the pg_test framework starts
    }

    pub fn postgresql_conf_options() -> Vec<&'static str> {
        // return any postgresql.conf settings that are required for your tests
        vec![]
    }
}