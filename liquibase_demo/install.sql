-- SQLcl uses the SQLCL engine for formatted sql changelog not the JDBC engine
-- By default, a project will not use substitution variables and allows blank
-- lines in sql statements.

set define off
set sqlblanklines on

-- Kick off Liquibase
prompt "Installing/updating schemas"
lb update -log -changelog-file liquibase_demo/main.changelog.xml -search-path "."

