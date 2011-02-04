#!/bin/sh
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# 
# wdb - weather and water data storage
#
# Copyright (C) 2011 met.no
#
#  Contact information:
#  Norwegian Meteorological Institute
#  Box 43 Blindern
#  0313 OSLO
#  NORWAY
#  E-mail: wdb@met.no
#
#  This is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# uninstall - uninstall the metno-wdb-metadata namespace

DEFAULT_DATABASE=`__WDB_PKGLIBDIR__/wdbConfiguration --database`@`__WDB_PKGLIBDIR__/wdbConfiguration --host`
DEFAULT_USER=`__WDB_PKGLIBDIR__/wdbConfiguration --user`
DEFAULT_PORT=`__WDB_PKGLIBDIR__/wdbConfiguration --port`

SCRIPT_VERSION=__WDB_VERSION__

SCRIPT_USAGE="Usage: $0 [OPTION]

The script uninstalls the WDB system from the database using the PG environment variables:

PGDATABASE        (default: $DEFAULT_PGDATABASE)
PGUSER            (default: $DEFAULT_USER)
PGPORT            (default: $DEFAULT_PORT)

Options:
-d NAME, --database=NAME    
                   uninstall database <NAME>
-u USER, --user=USER
                   uninstall as user <NAME>
-p PORT, --port=PORT
                   uninstall on port <PORT>
--help             display this help and exit
--version          output version information and exit
"

# Parse command line
while test -n "$1"; do
    case $1 in
	--database=*)
	    WDB_INSTALL_DATABASE=`echo $1 | sed 's/--database=//'`
	    shift
	    continue;;
	-d)
	    shift
	    WDB_INSTALL_DATABASE=$1
	    shift
	    continue;;
	--user=*)
	    WDB_INSTALL_USER=`echo $1 | sed 's/--user=//'`
	    shift
	    continue;;
	-u)
	    shift
	    WDB_INSTALL_USER=$1
	    shift
	    continue;;
	--port=*)
	    WDB_INSTALL_PORT=`echo $1 | sed 's/--port=//'`
	    shift
	    continue;;
	-p)
	    shift
	    WDB_INSTALL_PORT=$1
	    shift
	    continue;;
	--help) 
	    echo "$SCRIPT_USAGE"; exit 0;;
	--version) 
	    echo "$0 $SCRIPT_VERSION"; exit 0;;
    esac
done

# Set defaults variables
# DATABASE_NAME
if test -z "$WDB_INSTALL_DATABASE"; then
    WDB_INSTALL_DATABASE=$DEFAULT_DATABASE
fi

# DATABASE_USER
if test -z "$WDB_INSTALL_USER"; then
	WDB_INSTALL_USER=$DEFAULT_USER
fi

# DATABASE_PORT
if test -z "$WDB_INSTALL_PORT"; then
	WDB_INSTALL_PORT=$DEFAULT_PORT
fi


# Start Uninstallation
echo "---- metno-wdb-metadata uninstall ----"
# echo -n "dropping users and roles... "
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT cleantest -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT wcitest -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT gribtest -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT gribload -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT wdb_test -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT wdb_write -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT wdb_clean -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT wdb_read -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT wdb_grib -q
# dropuser -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT wdb_admin -q
# echo "done"
echo "---- metno-wdb-metadata uninstall completed ----"
exit 0
