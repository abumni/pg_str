-- ./src/lib.rs:14:0
CREATE OR REPLACE FUNCTION str."ascii"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'ascii_wrapper';
-- ./src/lib.rs:18:0
CREATE OR REPLACE FUNCTION str."is_ascii"("input" text) RETURNS bool STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'is_ascii_wrapper';
-- ./src/lib.rs:22:0
CREATE OR REPLACE FUNCTION str."contains"("input" text, "search" text) RETURNS bool STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'contains_wrapper';
-- ./src/lib.rs:26:0
CREATE OR REPLACE FUNCTION str."contains_all"("input" text, "search" text[]) RETURNS bool STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'contains_all_wrapper';
-- ./src/lib.rs:31:0
CREATE OR REPLACE FUNCTION str."lower"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'lower_wrapper';
-- ./src/lib.rs:36:0
CREATE OR REPLACE FUNCTION str."upper"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'upper_wrapper';
-- ./src/lib.rs:41:0
CREATE OR REPLACE FUNCTION str."slug"("input" text, "sep" varchar) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'slug_wrapper';
-- ./src/lib.rs:47:0
CREATE OR REPLACE FUNCTION str."singular"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'singular_wrapper';
-- ./src/lib.rs:51:0
CREATE OR REPLACE FUNCTION str."plural"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'plural_wrapper';
-- ./src/lib.rs:55:0
CREATE OR REPLACE FUNCTION str."title"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'title_wrapper';
-- ./src/lib.rs:59:0
CREATE OR REPLACE FUNCTION str."camel"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'camel_wrapper';
-- ./src/lib.rs:63:0
CREATE OR REPLACE FUNCTION str."kebab"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'kebab_wrapper';
-- ./src/lib.rs:67:0
CREATE OR REPLACE FUNCTION str."snake"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'snake_wrapper';
-- ./src/lib.rs:71:0
CREATE OR REPLACE FUNCTION str."studly"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'studly_wrapper';
-- ./src/lib.rs:75:0
CREATE OR REPLACE FUNCTION str."scream"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'scream_wrapper';
-- ./src/lib.rs:80:0
CREATE OR REPLACE FUNCTION str."markdown"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'markdown_wrapper';
-- ./src/lib.rs:94:0
CREATE OR REPLACE FUNCTION str."substr"("input" text, "start" integer, "end" integer) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'substr_wrapper';
-- ./src/lib.rs:98:0
CREATE OR REPLACE FUNCTION str."replace"("input" text, "old" text, "new" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'replace_wrapper';
-- ./src/lib.rs:103:0
CREATE OR REPLACE FUNCTION str."append"("input" text, "extra" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'append_wrapper';
-- ./src/lib.rs:110:0
CREATE OR REPLACE FUNCTION str."split"("input" text, "pattern" text) RETURNS text[] STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'split_wrapper';
-- ./src/lib.rs:115:0
CREATE OR REPLACE FUNCTION str."split_set"("input" text, "pattern" text) RETURNS SETOF text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'split_set_wrapper';
