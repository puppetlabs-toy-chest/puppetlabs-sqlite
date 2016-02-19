sqlite
======

Author: Carl Caum <carl@puppetlabs.com>
Copyright (c) 2011, Puppet Labs Inc.

ABOUT
=====

This module manages [sqlite](http://www.sqlite.org). Through declarion of the `sqlite` class, sqlite will be installed on the system.

The `sqlite::db` defined type allows for the management of a sqlite database on the node

CONFIGURATION
=============

The main class (sqlite) only needs to be declared.  No class parameters or top scope variables are needed.

The `sqlite::db` defined type can be used to manage a sqlite database on the system.

The following parameters are available for the resources declaration:

    location        What directory the database should go in.  The presence of the directory must be managed separately of the defined type.
    owner           The owner of the sqlite database file on disk
    group           The group owning the sqlite database file on disk
    mode            The mode of the sqlite database file on disk
    ensure          Whether the database should be `present` or `absent`.  Default to `present`
    sql             The path to a sqlfile you want to execute. This can be single file specified as string, or it can be an array of strings. Defaults to undef.
    enforce_sql     Specify whether executing the sqlfiles should happen on every run. If set to 'false', sqlfiles only run once. Valid values are 'true', 'false'. Defaults to 'false'.
    import_timeout  Timeout, in seconds, for loading the sqlfiles. Defaults to '300'.
    sqlite_cmd      The sqlite command for the node's platform.  Defaults to `sqlite3`


TODO
====

 * Allow for sql commands to be based to sqlite::db for use during creation
