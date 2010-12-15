
#-----------------------------------------------------------------------------
# System Metadata
#-----------------------------------------------------------------------------

METADATA_SOURCES =		etc/metadata/wdb_spatial_ref_sys.in.sql \
						etc/metadata/wdb_party.in.sql \
						etc/metadata/wdb_dataprovider.in.sql \
						etc/metadata/wdb_placepoint.in.sql \
						etc/metadata/wdb_placeregulargrid.in.sql \
						etc/metadata/wdb_unit.in.sql \
						etc/metadata/wdb_parameter.in.sql \
						etc/metadata/wdb_namespace.in.sql \
						etc/metadata/wdbMetadata.in.sql

sql_DATA +=		 		$(METADATA_SOURCES:.in.sql=.sql)

CLEANFILES +=		 	$(METADATA_SOURCES:.in.sql=.sql)

EXTRA_DIST +=			$(METADATA_SOURCES) \
						etc/metadata/metadata.mk \
						etc/metadata/Makefile.am \
						etc/metadata/Makefile.in

DISTCLEANFILES +=		etc/metadata/Makefile


# Local Makefile Targets
#-----------------------------------------------------------------------------

etc/metadata/all: $(METADATA_SOURCES:.in.sql=.sql) $(CORE_METADATA:.in.csv=.csv)

etc/metadata/clean: clean
