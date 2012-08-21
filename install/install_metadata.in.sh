#!/bin/sh
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# 
# wdb - weather and water data storage
# metno-metadata
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
# install - install the metno-metadata

version_number=__SCHEMA_VERSION__

type -P __WDB_BINDIR__/wdbConfiguration &>/dev/null || { echo "ERROR: Could not find wdbConfiguration. Aborting." >&2; exit 1; }

DEFAULT_DATABASE=`__WDB_BINDIR__/wdbConfiguration --database`@`__WDB_BINDIR__/wdbConfiguration --host`
DEFAULT_USER=`__WDB_BINDIR__/wdbConfiguration --user`
DEFAULT_PORT=`__WDB_BINDIR__/wdbConfiguration --port`

SCRIPT_VERSION=__WDB_VERSION__

SCRIPT_USAGE="Usage: $0 [OPTION]

The script installs the WDB system in the database specified by the
PG environment variables, unless overriden on the command line or in
the configuration files.

PGDATABASE        (default: $DEFAULT_DATABASE)
PGUSER            (default: $DEFAULT_USER)
PGPORT            (default: $DEFAULT_PORT)

If the named database does not exist, the install script creates the
database. If the database exists, the install script will upgrade the
database, if necessary.

Options:

-d NAME, --database=NAME    
                   install to database <NAME>

-u USER, --user=USER
                   install as user <NAME>

-p PORT, --port=PORT
                   install on port <PORT>

-c FILE, --config=FILE
                   Read additional configuration from <FILE>

-f, --force-install
                   force a clean installation over existing database. 
                   This will delete the existing database if it exists 
                   and overwrite it with a new installation. WARNING: 
                   All data in the existing database will be lost.

--with-postgis=PATH
                   Specify the contrib directory of postgres if this
                   is not <postgres>/share/contrib. This directory
                   needs to contain the postgis installation files
                   lwpostgis.sql and spatial_ref_sys.sql

--help             display this help and exit

--version          output version information and exit
"

# Parse command line
while test -n "$1"; do
    case "$1" in
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
	--force-install)
	    WDB_OVERWRITE_DATABASE="yes"
	    shift
	    continue;;
	-f)
	    WDB_OVERWRITE_DATABASE="yes"
	    shift
	    continue;;
	--with-postgis=*)
	    WDB_POSTGIS_CONTRIB=`echo $1 | sed 's/--with-postgis=//'`
	    shift
	    continue;;
	--help) 
	    echo "$SCRIPT_USAGE"; exit 0;;
	--version) 
	    echo "$0 $SCRIPT_VERSION"; exit 0;;
	*)
	    shift
	    continue;;
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

# Start Installation
echo "---- metno wdb metadata installation ----"

# Directory for logging
export LOGDIR=/tmp/$USER/metno-wdb-metadata/var/logs/
mkdir -p $LOGDIR

# installation information
echo -n "installing user identification... "
echo $WDB_INSTALL_USER
echo -n "installing database with database name... "
echo $WDB_INSTALL_DATABASE
echo -n "installing database on database port... "
echo $WDB_INSTALL_PORT

# checking if we can find the sql source files
echo -n "checking for the presence of metno-wdb-metadata files... "
WDB_DATAMODEL_PATH=__WDB_DATADIR__/sql
WDB_METADATA_PATH=$WDB_DATAMODEL_PATH
WDB_CLEANUP_PATH=$WDB_DATAMODEL_PATH
if test ! -f $WDB_DATAMODEL_PATH/wdbMetadata.sql; then
	echo "not found"
    echo "Error: Could not locate metadata installation files."
	echo "Checking: $WDB_DATAMODEL_PATH"
	echo "Unable to install metno-wdb-metadata."
    echo "Error: Could not locate metadata installation files. Unable to install wdb."
    exit 1
fi
echo "found"


# Verify that Postmaster is running
echo -n "checking that postgres is running... "
PID=`ps aux | grep postgres | grep -v grep`
if test -n "$PID"; then
    echo "yes"
else
    echo "no"
    echo "Error: could not find postgres. Check that your postgres installation is set up correctly and that postgres is running"
    exit 1
fi


# Get database name
WDB_NAME=`echo $WDB_INSTALL_DATABASE | sed 's/@/\n/' | sed q`
export $WDB_NAME

# Check that the database exists
echo -n "checking whether database $WDB_NAME exists... "
# DB_CHECK= list database | isolate pattern WDB_NAME | split record |  
# grab first line (name) | trim whitesoace
DB_CHECK=`psql -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT -l | sed -n /$WDB_NAME/p | sed -e 's/|/\n/' | sed q | sed -e 's/^[ \t]*//;s/[ \t]*$//'`
# Test whether database exists
# Note: as the list above only grabs the first tablename matching 
# the WDB_NAME pattern this may fail if there is a database with a
# similar name present in the DB
if test "$DB_CHECK" = "$WDB_NAME"; then 
    echo "yes"
    DATABASE_EXISTS="yes"
else
    echo "no"
    echo "Error: could not find the database $WDB_NAME!"
    exit 1
fi

# Check whether user exists
#echo -n "checking whether database user $WDB_INSTALL_USER exists... "
# USER_CHECK= list users | isolate pattern $WDB_INSTALL_USER | split record |  
# grab first line (name) | trim whitesoace
#USER_CHECK=`psql -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT -d postgres -c "\du" | sed -n /wdb_admin/p | sed -e 's/|/\n/' | sed q | sed -e 's/^[ \t]*//;s/[ \t]*$//'`
# Test whether user exists
# Note: same limitation as above
#if test "$USER_CHECK" = "wdb_admin"; then 
#    echo "yes"
#    ADMIN_EXISTS="yes"
#else
#    echo "no"
#    ADMIN_EXISTS="no"
#fi

# Create wdb_admin if role does not exist
#if test "$ADMIN_EXISTS" = "no"; then
#    echo -n "creating role wdb_admin... "
#    createuser -p $WDB_INSTALL_PORT wdb_admin -s -q
#    echo "done"
#fi


# Check version of database schema
echo -n "current schema version of WDB... "
current_version=`psql -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT -d $WDB_NAME -l -c "select max(packageversion) from wci.configuration() where name ='WDB';" -q | sed -e '1,2d' | sed -e '2,$d' | sed 's/^[ ]//g'`
echo $current_version

if [ $current_version -lt $version_number ]
then
    echo "Error: The installed database is schema package $current_version. This metadata package requires the database to be updated to at least version $version_number."
    exit 1
fi


# Install Metadata
echo -n "installing baseline metadata... "
psql -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT -d $WDB_NAME -q <<EOF 
SET CLIENT_MIN_MESSAGES TO "WARNING";
\set ON_ERROR_STOP
\o $LOGDIR/wdb_install_metadata.log
\i $WDB_METADATA_PATH/wdbMetadata.sql 
EOF
if [ 0 != $? ]; then
    echo "ERROR"; exit 1
else
    echo "done"
fi
	
# Update Materialized View
echo -n "updating materialized view base... "
psql -U $WDB_INSTALL_USER -p $WDB_INSTALL_PORT -d $WDB_NAME -q <<EOF 
SET CLIENT_MIN_MESSAGES TO "WARNING";
\set ON_ERROR_STOP
\o $LOGDIR/wdb_install_matview.log
SELECT admin.updateMaterializedViews(); 
EOF
if [ 0 != $? ]; then
    echo "ERROR"; exit 1
else
    echo "done"
fi
	
# Adding users
echo -n "adding met.no user... "
/usr/bin/wdb createuser locationforecastload WRITE
echo "done"
	

echo "---- metno wdb metadata installation completed ----"
exit 0
