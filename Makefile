PG=13
APP=pg_str
PREFIX=target/release/$(APP)-pg$(PG)

package:
	cargo pgx package

install:
	cp $(PREFIX)/usr/share/postgresql/$(PG)/extension/$(APP)--1.0.sql /usr/share/postgresql/$(PG)/extension/$(APP)--1.0.sql
	cp $(PREFIX)/usr/lib/postgresql/$(PG)/lib/$(APP).so /usr/lib/postgresql/$(PG)/lib/$(APP).so
	cp $(PREFIX)/usr/share/postgresql/$(PG)/extension/$(APP).control /usr/share/postgresql/$(PG)/extension/$(APP).control
	service postgresql restart
