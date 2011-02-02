#-----------------------------------------------------------------------------
# Project Makefile for WDB Metadata
#
# This file is processed by automake to generate the non-recursive
# project Makefile
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Global Settings
#-----------------------------------------------------------------------------

# Scanned by Autoreconf; must be static (no expansion)
ACLOCAL_AMFLAGS = 		-I m4

AM_CPPFLAGS =			-DSYSCONFDIR=\"$(sysconfdir)\"
AM_LDFLAGS =			-L@builddir@

LIBTOOL_VERSION_FLAG = 	-release $(VERSION)

# Compiler Settings
SED_SUBSTITUTION = 		sed s:__WDB_VERSION__:$(VERSION):g $<\
						| sed s:__WDB_LOGDIR__:@abs_builddir@/var/logs:g \
						| sed s:__WDB_BUILDDIR__:@abs_builddir@:g \
						| sed s:__WDB_SRCDIR__:@srcdir@:g \
			 			| sed s:__WDB_BINDIR__:@bindir@:g \
			 			| sed s:__WDB_LIBDIR__:@libdir@:g \
			 			| sed s:__WDB_PKGLIBDIR__:$(libdir)/metno-wdb-metadata:g \
			 			| sed s:__WDB_PKGDATADIR__:$(pkgdatadir):g \
			 			| sed s:__WDB_DATADIR__:$(wdbdatadir):g \
			 			| sed s:__WDB_SYSCONFDIR__:@sysconfdir@:g \
			 			| sed s:__WDB_LOCALSTATEDIR__:@localstatedir@:g \
			 			| sed s:__WDB_BINDIR__:@bindir@:g \
						| sed s:__POSTGIS_DIR__:@postgis_SQL@:g \
						| sed s:__WCI_SCHEMA__:wci_int:g \
						| sed s:__SCHEMA_VERSION__:$(MIN_SCHEMA_VERSION):g \
						| sed s:__WDB_DBNAME__:$(DATABASE_NAME):g \
						| sed s:__WDB_DISTDIR__:$(PACKAGE)-$(VERSION):g \
			 			> $@

#						| sed s:__WDB_LIB__:wdb.so:g \
#						| sed s:__WDB_SCHEMA__:wdb_int:g \
#						| sed s:__WCI_SCHEMA__:wci_int:g \
#						| sed s:__WCI_LIB__:wdb.so:g \
#						| sed s:__WDB_SRID__:$(DEFAULT_SRID):g \
#

CRON_COMPILE =			$(SED_SUBSTITUTION);\
						chmod 754 $@

CSV_COMPILE =			$(SED_SUBSTITUTION)

ENT_COMPILE =			$(SED_SUBSTITUTION)

SH_COMPILE =			$(SED_SUBSTITUTION);\
						chmod 754 $@

SQL_COMPILE =			$(SED_SUBSTITUTION)

TEST_COMPILE =			$(SED_SUBSTITUTION);\
						chmod 754 $@

SUFFIXES = 				.in.cron .cron \
						.in.csv .csv \
						.in.ent .ent \
						.in.sh .sh \
						.in.sql .sql \
						.in.test .test


# Compile Rules
.in.cron.cron:
						$(CRON_COMPILE)

.in.csv.csv:
						$(CSV_COMPILE)

.in.ent.ent:
						$(ENT_COMPILE)

.in.sh.sh:
						$(SH_COMPILE)

.in.sql.sql:
						$(SQL_COMPILE)

.in.test.test:
						$(TEST_COMPILE)


# Setting Targets
bin_PROGRAMS =
bin_SCRIPTS =
pkglib_PROGRAMS =
pkglib_SCRIPTS =
pkginclude_HEADERS =
lib_LTLIBRARIES = 
sysconf_DATA =
man_MANS =
EXTRA_DIST =
EXTRA_PROGRAMS = 		$(installchecks)
CLEANFILES =
DISTCLEANFILES = 
MOSTLYCLEANFILES =
dist_bin_SCRIPTS =
dist_sysconf_DATA =
noinst_PROGRAMS =
noinst_SCRIPTS =		
noinst_LIBRARIES =
noinst_DATA =
check_PROGRAMS =
check_LTLIBRARIES =
TESTS =
INSTALLTESTS =
PERFORMANCETESTS =
STABILITYTESTS =

# Share directory organization
wdbdatadir = 			$(datadir)/metno-wdb-metadata
wdbdata_DATA =
sqldir = 				$(wdbdatadir)/sql
sql_DATA =


#-----------------------------------------------------------------------------
# WDB Configuration
#-----------------------------------------------------------------------------

nodist_bin_SCRIPTS = 	

DISTCLEANFILES +=		metno-wdb-metadata-config

include etc/metadata.mk

include install/metadata.mk


#-----------------------------------------------------------------------------
# Cleaning
#-----------------------------------------------------------------------------

clean-local:
	rm -f $(CLEANFILES)
	$(DOCCLEAN_HOOK)
	rm -rf @builddir@/var/
	rm -f core.*


#-----------------------------------------------------------------------------
# Install Hooks
#-----------------------------------------------------------------------------

install-metadata:
	mkdir -p @builddir@/var/logs/
	rm -f @builddir@/var/logs/*
	@builddir@/install/install_metadata -d $(DATABASE_NAME)

uninstall-metadata: install/uninstall_metadata 
	@builddir@/install/uninstall_database -d $(DATABASE_NAME)

# We cannot install the database unless we have installed the binaries in 
# @prefix@, therefore we ommit database installation if DESTDIR has been set.
install-data-hook:  
	@if [[ $(DO_INSTALL_DATABASE) = "true" ]]; then \
		$(MAKE) install-metadata; \
	else \
		echo "-------------------------------------------------------------------------------"; \
		echo "Run <$(MAKE) install-metadata> to install the metadata"; \
		echo "-------------------------------------------------------------------------------"; \
	fi

uninstall-local:
	@if [[ $(DO_INSTALL_DATABASE) = "true" ]]; then \
		$(MAKE) uninstall-database; \
	else \
		echo "-------------------------------------------------------------------------------"; \
		echo "Run <$(MAKE) uninstall-metadata> to delete the namespaces installed by this"; \
		echo "package."; \
		echo "-------------------------------------------------------------------------------"; \
	fi


DISTCHECK_DATABASE_NAME = wdb_distcheck
DISTCHECK_CONFIGURE_FLAGS = --enable-database-install --with-database-name=$(DISTCHECK_DATABASE_NAME)

override distuninstallcheck_listfiles =  find . -type f -! -name metno-metadata.conf -print

distcheck-hook:
	mkdir $(distdir)/_inst/etc/
	echo "database = $(DISTCHECK_DATABASE_NAME)" > $(distdir)/_inst/etc/wdb.conf


#-----------------------------------------------------------------------------
# Makefile Maintenance
#-----------------------------------------------------------------------------


update-makefiles:
	@for dir in @build_subdirs@ ; do \
		echo "cp $(top_srcdir)/config/Makefile.am.subdir \
			$(top_srcdir)/$$dir/Makefile.am" ; \
		cp "$(top_srcdir)/config/Makefile.am.subdir" \
			"$(top_srcdir)/$$dir/Makefile.am" || \
			exit 1 ; \
	done

#-----------------------------------------------------------------------------
# Debian Makefile
#-----------------------------------------------------------------------------

include mk/debian.mk
	