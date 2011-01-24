#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
#
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Pre-Conf
#-----------------------------------------------------------------------------

AC_PREREQ(2.59)
AC_INIT(metno-metadata, 0.9.8, [wdb@met.no])
AC_SUBST( [MIN_SCHEMA_VERSION],["0"] )

# Config
# AC_CONFIG_SRCDIR([config.h.in])
# AC_CONFIG_HEADER([config.h])
AC_CONFIG_MACRO_DIR([m4])

#-----------------------------------------------------------------------------
# Programs
#-----------------------------------------------------------------------------

AC_PROG_INSTALL
AC_PROG_MAKE_SET

#-----------------------------------------------------------------------------
# Checks
#-----------------------------------------------------------------------------
# NOOP

#-----------------------------------------------------------------------------
# Module Checks
#-----------------------------------------------------------------------------

# POSTGRES
WDB_POSTGRES_CHECK(8.1.x)
WDB_POSTGIS_CHECK(1.1.x)

AM_PATH_PYTHON(2.4,, [:])
AM_CONDITIONAL([HAVE_PYTHON], [test "$PYTHON" != :])

# DOCBOOK
WDB_DOCBOOK_CHECK

# Set Default Projection
AC_DEFINE(DEFAULT_PROJECTION,["+proj=longlat +ellps=WGS84 +no_defs"],[The default projection used in the database])

# Set Database Install
WDB_DATABASE_NAME
WDB_DATABASE_INSTALL


#-----------------------------------------------------------------------------
# Automake
#-----------------------------------------------------------------------------

AM_INIT_AUTOMAKE(-Wall -Werror subdir-objects)
AM_PROG_CC_C_O


#-----------------------------------------------------------------------------
# Configure and Exit
#-----------------------------------------------------------------------------

# Configuration Files
AC_CONFIG_FILES([Makefile
				 etc/Makefile
				 install/Makefile
		])
AC_OUTPUT

# Print Out Summary of Configuration
AC_MSG_RESULT([ ])
AC_MSG_RESULT([$PACKAGE_NAME $PACKAGE_VERSION])
AC_MSG_RESULT([Configuration:])
AC_MSG_RESULT([-------------------------------------------------------------------------])
AC_MSG_RESULT([ ])
AC_MSG_RESULT([ Database Name:	  $DATABASE_NAME])
AC_MSG_RESULT([ Host System:      $host])
AC_MSG_RESULT([  ])
AC_MSG_RESULT([ Prefix:           $prefix])
AC_MSG_RESULT([ Manuals:          $mandir])
AC_MSG_RESULT([ Data:             $datadir])
AC_MSG_RESULT([ System Config:    $sysconfdir])
AC_MSG_RESULT([  ])
AC_MSG_RESULT([-------------------------------------------------------------------------])
AC_MSG_RESULT([ ])
