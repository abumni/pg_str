-- ./src/lib.rs:13:0
CREATE OR REPLACE FUNCTION str."return_static"() RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'return_static_wrapper';
-- ./src/lib.rs:71:0
CREATE OR REPLACE FUNCTION str."lower"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'lower_wrapper';
-- ./src/lib.rs:76:0
CREATE OR REPLACE FUNCTION str."upper"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'upper_wrapper';
-- ./src/lib.rs:81:0
CREATE OR REPLACE FUNCTION str."slug"("input" text, "sep" varchar) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'slug_wrapper';
-- ./src/lib.rs:87:0
CREATE OR REPLACE FUNCTION str."singular"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'singular_wrapper';
-- ./src/lib.rs:91:0
CREATE OR REPLACE FUNCTION str."plural"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'plural_wrapper';
-- ./src/lib.rs:95:0
CREATE OR REPLACE FUNCTION str."title"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'title_wrapper';
-- ./src/lib.rs:99:0
CREATE OR REPLACE FUNCTION str."kebab"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'kebab_wrapper';
-- ./src/lib.rs:103:0
CREATE OR REPLACE FUNCTION str."snake"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'snake_wrapper';
-- ./src/lib.rs:107:0
CREATE OR REPLACE FUNCTION str."studly"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'studly_wrapper';
-- ./src/lib.rs:111:0
CREATE OR REPLACE FUNCTION str."scream"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'scream_wrapper';
-- ./src/lib.rs:116:0
CREATE OR REPLACE FUNCTION str."markdown"("input" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'markdown_wrapper';
-- ./src/lib.rs:130:0
CREATE OR REPLACE FUNCTION str."substr"("input" text, "start" integer, "end" integer) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'substr_wrapper';
-- ./src/lib.rs:135:0
CREATE OR REPLACE FUNCTION str."append"("input" text, "extra" text) RETURNS text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'append_wrapper';
-- ./src/lib.rs:142:0
CREATE OR REPLACE FUNCTION str."split"("input" text, "pattern" text) RETURNS text[] STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'split_wrapper';
-- ./src/lib.rs:147:0
CREATE OR REPLACE FUNCTION str."split_set"("input" text, "pattern" text) RETURNS SETOF text STRICT LANGUAGE c AS 'MODULE_PATHNAME', 'split_set_wrapper';
