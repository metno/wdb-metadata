
#-----------------------------------------------------------------------------
# Install Scripts
#-----------------------------------------------------------------------------

INSTALL_SOURCES =		install/install_metadata.in.sh

nodist_pkglib_SCRIPTS =	$(INSTALL_SOURCES:.in.sh=)

EXTRA_DIST +=			$(INSTALL_SOURCES) \
						install/Makefile.am \
						install/Makefile.in

CLEANFILES += 			$(INSTALL_SOURCES:.in.sh=) \
						$(NOINSTALL_SOURCES:.in.sh=)

DISTCLEANFILES +=		install/Makefile


# Local Makefile Targets
#-----------------------------------------------------------------------------

install/all: $(INSTALL_SOURCES:.in.sh=)

install/clean: clean
