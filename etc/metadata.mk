
#-----------------------------------------------------------------------------
# System Metadata
#-----------------------------------------------------------------------------

METADATA_SOURCES =		etc/wdb_spatial_ref_sys.in.sql \
						etc/wdb_party.in.sql \
						etc/wdb_dataprovider.in.sql \
						etc/wdb_placepoint.in.sql \
						etc/wdb_placeregulargrid.in.sql \
						etc/wdb_parameter.in.sql \
						etc/wdb_namespace.in.sql \
						etc/wdbMetadata.in.sql

sql_DATA +=		 		$(METADATA_SOURCES:.in.sql=.sql)

CLEANFILES +=		 	$(METADATA_SOURCES:.in.sql=.sql)

EXTRA_DIST +=			$(METADATA_SOURCES) \
						etc/metadata.mk \
						etc/Makefile.am \
						etc/Makefile.in

DISTCLEANFILES +=		etc/Makefile


# Local Makefile Targets
#-----------------------------------------------------------------------------

etc/all: $(METADATA_SOURCES:.in.sql=.sql) $(CORE_METADATA:.in.csv=.csv)

etc/clean: clean
