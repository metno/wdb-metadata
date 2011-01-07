-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- 
-- wdb - weather and water data storage
--
-- Copyright (C) 2010 met.no
--
--  Contact information:
--  Norwegian Meteorological Institute
--  Box 43 Blindern
--  0313 OSLO
--  NORWAY
--  E-mail: wdb@met.no
--
--  This is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either v ersion 2 of the License, or
--  (at your option) any later version.
--
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


-- Met.no Metadata
-- This package contains the metadata information that is specific to
-- met.no.

-- Spatial References
\i __WDB_DATADIR__/sql/wdb_spatial_ref_sys.sql

-- Party (Organizations and People)
\i __WDB_DATADIR__/sql/wdb_party.sql

-- Namespace
\i __WDB_DATADIR__/sql/wdb_namespace.sql

-- DataProvider
\i __WDB_DATADIR__/sql/wdb_dataprovider.sql

-- PlaceId
\i __WDB_DATADIR__/sql/wdb_placepoint.sql
\i __WDB_DATADIR__/sql/wdb_placeregulargrid.sql

-- Parameters & Units
\i __WDB_DATADIR__/sql/wdb_parameter.sql
