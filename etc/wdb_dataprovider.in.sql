-- Data Providers
SELECT wci.begin( 'wdb', 88, 88, 88 );

--- AROME Data
SELECT wci.adddataprovider( 'arome', 'data provider group', 'grid', '1 day', 'AROME data model' );

--- AROME Norway Data ---
SELECT wci.adddataprovider( 'arome_2500m', 'computer system', 'grid', '1 day', 'AROME Norway 2.5km resolution model' );
SELECT wci.adddataprovidertogroup( 'arome_2500m', 'arome');
SELECT wci.adddataprovider( 'arome_2500m_temperature_corrected', 'computer system', 'grid', '1 day', 'AROME Norway 2.5km resolution model' );
SELECT wci.adddataprovidertogroup( 'arome_2500m_temperature_corrected', 'arome');

--- AROME MetCoOp Data
SELECT wci.adddataprovider( 'arome_metcoop_2500m', 'computer system', 'grid', '1 day', 'AROME MetCoOp 2.5km resolution model' );
SELECT wci.adddataprovidertogroup( 'arome_metcoop_2500m', 'arome');
SELECT wci.adddataprovider( 'arome_metcoop_2500m_temperature_corrected', 'computer system', 'grid', '1 day', 'AROME MetCoOp 2.5km resolution model' );
SELECT wci.adddataprovidertogroup( 'arome_metcoop_2500m_temperature_corrected', 'arome');

--- AROME Arctic
SELECT wci.adddataprovider( 'arome_arctic_2500m', 'computer system', 'grid', '1 day', 'AROME Arctic 2.5km resolution model' );
SELECT wci.adddataprovidertogroup( 'arome_arctic_2500m', 'arome');

--- MetCoOp EPS
SELECT wci.adddataprovider( 'metcoop_eps_control_2500m', 'computer system', 'grid', '1 day', 'MetCoOp EPS Control 2.5km resolution model' );
SELECT wci.adddataprovider( 'metcoop_eps_control_temperature_corrected_2500m', 'computer system', 'grid', '1 day', 'MetCoOp EPS Control Temperature Corrected 2.5km model' );


--- PROFF Data
SELECT wci.adddataprovider( 'proff',   'data provider group', 'any', '1 day', 'Field data produced in the PROFF system' );
SELECT wci.adddataprovider( 'proff.raw', 'computer system', 'grid', '1 day', 'proff.raw' );
SELECT wci.adddataprovidertogroup( 'proff.raw', 'proff');
SELECT wci.adddataprovider( 'proff.h12', 'computer system', 'grid', '1 day', 'proff.h12' );
SELECT wci.adddataprovidertogroup( 'proff.h12', 'proff');
SELECT wci.adddataprovider( 'proff.h12h8', 'computer system', 'grid', '1 day', 'proff.h12h8' );
SELECT wci.adddataprovidertogroup( 'proff.h12h8', 'proff');
SELECT wci.adddataprovider( 'proff.h12h8h4', 'computer system', 'grid', '1 day', 'proff.h12h8h4' );
SELECT wci.adddataprovidertogroup( 'proff.h12h8h4', 'proff');
SELECT wci.adddataprovider( 'proff.h12h4', 'computer system', 'grid', '1 day', 'proff.h12h4' );
SELECT wci.adddataprovidertogroup( 'proff.h12h4', 'proff');
SELECT wci.adddataprovider( 'proff.h12um4', 'computer system', 'grid', '1 day', 'proff.h12um4' );
SELECT wci.adddataprovidertogroup( 'proff.h12um4', 'proff');
SELECT wci.adddataprovider( 'proff.h12h8h4vind', 'computer system', 'grid', '1 day', 'proff.h12h8h4vind' );
SELECT wci.adddataprovidertogroup( 'proff.h12h8h4vind', 'proff');
SELECT wci.adddataprovider( 'proff.h12h8um4', 'computer system', 'grid', '1 day', 'proff.h12h8um4' );
SELECT wci.adddataprovidertogroup( 'proff.h12h8um4', 'proff');
SELECT wci.adddataprovider( 'proff.h12h8ppvum4', 'computer system', 'grid', '1 day', 'proff.h12h8ppvum4' );
SELECT wci.adddataprovidertogroup( 'proff.h12h8ppvum4', 'proff');
SELECT wci.adddataprovider( 'proff.h12h8ppv', 'computer system', 'grid', '1 day', 'proff.h12h8ppv' );
SELECT wci.adddataprovidertogroup( 'proff.h12h8ppv', 'proff');
SELECT wci.adddataprovider( 'proff.default', 'computer system', 'grid', '1 day', 'proff.default' );
SELECT wci.adddataprovidertogroup( 'proff.default', 'proff');
SELECT wci.adddataprovider( 'proff.approved', 'computer system', 'grid', '1 day', 'proff.approved' );
SELECT wci.adddataprovidertogroup( 'proff.approved', 'proff');

--- ECMWF Data
SELECT wci.adddataprovider( 'ecmwf atmospheric', 'data provider group', 'grid', '1 day', 'The ECMWF atmospheric' );
SELECT wci.adddataprovider( 'ecmwf atmospheric 35r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 35r1' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 35r1', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 35r2', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 35r2' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 35r2', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 35r3', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 35r3' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 35r3', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 36r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 36r1' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 36r1', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 36r2', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 36r2' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 36r2', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 36r3', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 36r3' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 36r3', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 36r4', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 36r4' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 36r4', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 37r2', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 37r2' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 37r2', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 37r3', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 37r3' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 37r3', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 38r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 38r1' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 38r1', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 38r2', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 38r2' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 38r2', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 40r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 40r1' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 40r1', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 41r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 41r1' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 41r1', 'ecmwf atmospheric');

--- ECMWF Data 0.125
SELECT wci.adddataprovider( 'ecmwf_atmospheric0125', 'data provider group', 'grid', '1 day', 'The ECMWF atmospheric' );
SELECT wci.adddataprovider( 'ecmwf_atmospheric0125_v41r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 41r1' );
SELECT wci.adddataprovidertogroup( 'ecmwf_atmospheric0125_v41r1', 'ecmwf_atmospheric0125');

--- ECMWF Data 0.125 hourly timesteps
SELECT wci.adddataprovider( 'ecmwf_atmospheric0125_hourly', 'computer system', 'grid', '1 day', 'ECMWF atmospheric hourly' );

-- ECMWF Data (repackaged at met.no)
SELECT wci.adddataprovider( 'ecmwf felt', 'data provider group', 'grid', '1 day', 'ECMWF fields packaged as FELT files' );
SELECT wci.adddataprovider( 'ecmwf felt 103', 'computer system', 'grid', '1 day', 'ECMWF field packaged as FELT files' );
SELECT wci.adddataprovidertogroup( 'ecmwf felt 103', 'ecmwf felt');
SELECT wci.adddataprovider( 'ecmwf felt 104', 'computer system', 'grid', '1 day', 'ECMWF field packaged as FELT files' );
SELECT wci.adddataprovidertogroup( 'ecmwf felt 104', 'ecmwf felt');
SELECT wci.adddataprovider( 'ecmwf felt 105', 'computer system', 'grid', '1 day', 'ECMWF field packaged as FELT files' );
SELECT wci.adddataprovidertogroup( 'ecmwf felt 105', 'ecmwf felt');
SELECT wci.adddataprovider( 'ecmwf felt 106', 'computer system', 'grid', '1 day', 'ECMWF field packaged as FELT files' );
SELECT wci.adddataprovidertogroup( 'ecmwf felt 106', 'ecmwf felt');

-- Norwegian Forecast Data
select wci.adddataprovider( 'hirlam norway', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'pgen_probability', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'pgen_probability yr', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'pgen_percentile yr', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'trheimsleia', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'vestland', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'north sea', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'ss eps', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'north sea skagen', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'barents', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'bodoloppa', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'oslo fjord', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'senorge', 'computer system', 'grid', '1000 years', 'Local norwegian field data' );
select wci.adddataprovider( 'yr corrected', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'met eceps forecast', 'data provider group', 'grid', '1 day', 'Probabilities calculated by the eps2probandltf program' );
select wci.adddataprovider( 'met eceps large domain', 'computer system', 'grid', '1 day', 'Probabilities calculated by the eps2probandltf program big grid' );
select wci.adddataprovidertogroup( 'met eceps large domain', 'met eceps forecast');
select wci.adddataprovider( 'met eceps small domain', 'computer system', 'grid', '1 day', 'Probabilities calculated by the eps2probandltf program close-cropped norway' );
select wci.adddataprovidertogroup( 'met eceps small domain', 'met eceps forecast');
select wci.adddataprovider( 'met eceps large domain v.1.0', 'computer system', 'grid', '1 day', 'Probabilities calculated by version 1.0 of the eps2probandltf program big grid' );
select wci.adddataprovidertogroup( 'met eceps large domain v.1.0', 'met eceps forecast');
select wci.adddataprovider( 'met eceps large domain v.1.1', 'computer system', 'grid', '1 day', 'Probabilities calculated by version 1.0 of the eps2probandltf program big grid' );
select wci.adddataprovidertogroup( 'met eceps large domain v.1.1', 'met eceps forecast');
select wci.adddataprovider( 'met eceps small domain v.1.0', 'computer system', 'grid', '1 day', 'Probabilities calculated by version 1.0 of the eps2probandltf program close-cropped norway' );
select wci.adddataprovidertogroup( 'met eceps small domain v.1.0', 'met eceps forecast');
select wci.adddataprovider( 'met eceps small domain v.1.1', 'computer system', 'grid', '1 day', 'Probabilities calculated by version 1.0 of the eps2probandltf program close-cropped norway' );
select wci.adddataprovidertogroup( 'met eceps small domain v.1.1', 'met eceps forecast');
SELECT wci.adddataprovider( 'eps2probandltf', 'computer system', 'grid', '1 day', 'Probabilities calculated by the eps2probandltf program' );

-- WAM Norway data
SELECT wci.adddataprovider( 'wam norway', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
--SELECT wci.adddataprovider( 'wam norway', 'data provider group', 'grid', '1 day', 'Local norwegian field data' ); -- "wam norway" already exists, see previous line
SELECT wci.adddataprovider( 'wam norway 50000m', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovider( 'wam norway 10000m', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovider( 'wam norway 4000m', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovidertogroup( 'wam norway 50000m', 'wam norway' );
SELECT wci.adddataprovidertogroup( 'wam norway 10000m', 'wam norway' );
SELECT wci.adddataprovidertogroup( 'wam norway 4000m', 'wam norway' );

-- MyWave WAM data
SELECT wci.adddataprovider( 'mywave wam', 'data provider group', 'grid', '1 day', 'Local Norwegian field data' );
SELECT wci.adddataprovider( 'mywave wam 4000m', 'computer system', 'grid', '1 day', 'Local Norwegian field data' );
SELECT wci.adddataprovider( 'mywave wam 800m', 'computer system', 'grid', '1 day', 'Local Norwegian field data' );
SELECT wci.adddataprovidertogroup( 'mywave wam 4000m', 'mywave wam' );
SELECT wci.adddataprovidertogroup( 'mywave wam 800m', 'mywave wam' );

-- Nordic ROMS data
SELECT wci.adddataprovider( 'nordic', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovider( 'nordic roms', 'data provider group', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovider( 'nordic roms 4000m', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovidertogroup( 'nordic roms 4000m', 'nordic roms' );
SELECT wci.adddataprovidertogroup( 'nordic roms 4000m', 'nordic' );

-- Norkyst ROMS data
SELECT wci.adddataprovider( 'norkyst roms', 'data provider group', 'grid', '1 day', 'Local Norwegian field data' );
SELECT wci.adddataprovider( 'norkyst roms 800m', 'computer system', 'grid', '1 day', 'Local Norwegian field data' );
SELECT wci.adddataprovidertogroup( 'norkyst roms 800m', 'norkyst roms' );

-- Arctic ROMS data
SELECT wci.adddataprovider( 'arctic', 'data provider group', 'grid', '1 day', 'Local Norwegian field data' );
SELECT wci.adddataprovider( 'arctic roms', 'data provider group', 'grid', '1 day', 'Local Norwegian field data' );
SELECT wci.adddataprovider( 'arctic roms 20000m', 'computer system', 'grid', '1 day', 'Local Norwegian field data' );
SELECT wci.adddataprovidertogroup( 'arctic roms', 'arctic' );
SELECT wci.adddataprovidertogroup( 'arctic roms 20000m', 'arctic roms' );

-- Oceanic Data
SELECT wci.adddataprovider( 'swan', 'data provider group', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovider( 'swan500m', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovidertogroup( 'swan500m', 'swan');
SELECT wci.adddataprovider( 'swan_karmoy500m', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
SELECT wci.adddataprovidertogroup( 'swan_karmoy500m', 'swan');

-- Miscellaneous
SELECT wci.adddataprovider( 'ecmwf eps felt', 'computer system', 'grid', '1 day', 'Modified EC EPS data used in the PROFF system' );
SELECT wci.adddataprovider( 'met.no eceps modification', 'computer system', 'grid', '1 day', 'Modified EC EPS data used in the PROFF system' );
SELECT wci.adddataprovider( 'statkart.no', 'organization', 'grid', '1000 years', 'Statens Kartverk' );
select wci.adddataprovider( 'norsk_polarinstitutt', 'organization', 'grid', '1000 years', 'Data from Norsk Polarinstitutt' );
select wci.adddataprovider( 'global_terrain_2010', 'organization', 'grid', '1000 years', 'Global Multi-resolution Terrain Elevation Data 2010 (GMTED2010) from U.S. Geological Survey (USGS) and the National Geospatial-Intelligence Agency (NGA), http://topotools.cr.usgs.gov/gmted_viewer/');

SELECT wci.adddataprovider( 'hpc forecast', 'computer system', 'grid', '1 day', 'National Weather Service Hydrometeorological Prediction Center Forecast' );

---10300|0|proff.forecaster|2000-01-01T00:00:00Z|2000-01-01T00:00:00Z|10300|10301
---88150|0|proff eps|2000-01-01T00:00:00Z|2000-01-01T00:00:00Z|88150|88151
---88960|0|wam|2000-01-01T00:00:00Z|2000-01-01T00:00:00Z|88960|88961

SELECT wci.adddataprovider( 'hirlam', 'data provider group', 'grid', '1 day', 'Hirlam model data provider group. Encompasses all data that is generated using the Hirlam algorithm.' );
SELECT wci.adddataprovider( 'hirlam 50km', 'computer system', 'grid', '1 day', 'Hirlam 50km' );
SELECT wci.adddataprovidertogroup( 'hirlam 50km', 'hirlam');
SELECT wci.adddataprovider( 'hirlam 20km', 'computer system', 'grid', '1 day', 'Hirlam 20km' );
SELECT wci.adddataprovidertogroup( 'hirlam 20km', 'hirlam');
SELECT wci.adddataprovider( 'hirlam 10km', 'computer system', 'grid', '1 day', 'Hirlam 10km' );
SELECT wci.adddataprovidertogroup( 'hirlam 10km', 'hirlam');
SELECT wci.adddataprovider( 'hirlam 12km', 'computer system', 'grid', '1 day', 'Hirlam 12km' );
SELECT wci.adddataprovidertogroup( 'hirlam 12km', 'hirlam');
SELECT wci.adddataprovider( 'hirlam 8km', 'computer system', 'grid', '1 day', 'Hirlam 8km' );
SELECT wci.adddataprovidertogroup( 'hirlam 8km', 'hirlam');
SELECT wci.adddataprovider( 'hirlam 4km', 'computer system', 'grid', '1 day', 'Hirlam 4km' );
SELECT wci.adddataprovidertogroup( 'hirlam 4km', 'hirlam');


SELECT wci.adddataprovider( 'ecmwf atmospheric 0.5 deg', 'data provider group', 'grid', '1 day', 'ECMWF atmospheric development cycle 38r1' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 0.5 deg', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 1.5 deg', 'data provider group', 'grid', '1 day', 'ECMWF atmospheric development cycle 38r1' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 1.5 deg', 'ecmwf atmospheric');
SELECT wci.adddataprovider( 'ecmwf atmospheric 0.5 deg 38r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric 0.5 resolution development cycle 38r1' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 0.5 deg 38r1', 'ecmwf atmospheric 0.5 deg');
SELECT wci.adddataprovider( 'ecmwf atmospheric 1.5 deg 38r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric 1.5 resolution development cycle 38r1' );
SELECT wci.adddataprovidertogroup( 'ecmwf atmospheric 1.5 deg 38r1', 'ecmwf atmospheric 1.5 deg');

SELECT wci.adddataprovider( 'unified model', 'data provider group', 'grid', '1 day', 'Unified Model' );
SELECT wci.adddataprovider( 'unified model 4km', 'computer system', 'grid', '1 day', 'Unified Model 4km' );
SELECT wci.adddataprovidertogroup( 'unified model 4km', 'unified model');

-- VEGA Data (Interpolated Points from Fields)
SELECT wci.adddataprovider( 'hirlam50km_interpolated', 'data provider group', 'point','1 day', 'Hirlam point data generated on a 50km grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'hirlam50km_interpolated_v0', 'computer system', 'point','1 day', 'Hirlam point data generated on a 50km grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'hirlam50km_interpolated_v0', 'hirlam50km_interpolated');
SELECT wci.adddataprovider( 'hirlam50km_interpolated_v1', 'computer system', 'point','1 day', 'Hirlam point data generated on a 50km grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'hirlam50km_interpolated_v1', 'hirlam50km_interpolated');
SELECT wci.adddataprovider( 'hirlam20km_interpolated', 'data provider group', 'point','1 day', 'Hirlam point data generated on a 20km grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'hirlam20km_interpolated_v0', 'computer system', 'point','1 day', 'Hirlam point data generated on a 20km grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'hirlam20km_interpolated_v0', 'hirlam20km_interpolated');
SELECT wci.adddataprovider( 'hirlam20km_interpolated_v1', 'computer system', 'point','1 day', 'Hirlam point data generated on a 20km grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'hirlam20km_interpolated_v1', 'hirlam20km_interpolated');
SELECT wci.adddataprovider( 'hirlam12km_interpolated', 'data provider group', 'point','1 day', 'Hirlam point data generated on a 12km grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'hirlam12km_interpolated_v0', 'computer system', 'point','1 day', 'Hirlam point data generated on a 12km grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'hirlam12km_interpolated_v0', 'hirlam12km_interpolated');
SELECT wci.adddataprovider( 'hirlam12km_interpolated_v1', 'computer system', 'point','1 day', 'Hirlam point data generated on a 12km grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'hirlam12km_interpolated_v1', 'hirlam12km_interpolated');
SELECT wci.adddataprovider( 'hirlam10km_interpolated', 'data provider group', 'point','1 day', 'Hirlam point data generated on a 10km grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'hirlam10km_interpolated_v0', 'computer system', 'point','1 day', 'Hirlam point data generated on a 10km grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'hirlam10km_interpolated_v0', 'hirlam10km_interpolated');
SELECT wci.adddataprovider( 'hirlam10km_interpolated_v1', 'computer system', 'point','1 day', 'Hirlam point data generated on a 10km grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'hirlam10km_interpolated_v1', 'hirlam10km_interpolated');
SELECT wci.adddataprovider( 'hirlam8km_interpolated', 'data provider group', 'point','1 day', 'Hirlam point data generated on a 8km grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'hirlam8km_interpolated_v0', 'computer system', 'point','1 day', 'Hirlam point data generated on a 8km grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'hirlam8km_interpolated_v0', 'hirlam8km_interpolated');
SELECT wci.adddataprovider( 'hirlam8km_interpolated_v1', 'computer system', 'point','1 day', 'Hirlam point data generated on a 8km grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'hirlam8km_interpolated_v1', 'hirlam8km_interpolated');
SELECT wci.adddataprovider( 'hirlam4km_interpolated', 'data provider group', 'point','1 day', 'Hirlam point data generated on a 4km grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'hirlam4km_interpolated_v0', 'computer system', 'point','1 day', 'Hirlam point data generated on a 4km grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'hirlam4km_interpolated_v0', 'hirlam4km_interpolated');
SELECT wci.adddataprovider( 'hirlam4km_interpolated_v1', 'computer system', 'point','1 day', 'Hirlam point data generated on a 4km grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'hirlam4km_interpolated_v1', 'hirlam4km_interpolated');

SELECT wci.adddataprovider( 'unified_model4km_interpolated', 'data provider group', 'point','1 day', 'Unified model point data generated on a 4km grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'unified_model4km_interpolated_v0', 'computer system', 'point','1 day', 'Unified model point data generated on a 4km grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'unified_model4km_interpolated_v0', 'unified_model4km_interpolated');
SELECT wci.adddataprovider( 'unified_model4km_interpolated_v1', 'computer system', 'point','1 day', 'Unified model point data generated on a 4km grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'unified_model4km_interpolated_v1', 'unified_model4km_interpolated');

SELECT wci.adddataprovider( 'uk_global_interpolated', 'data provider group', 'point','1 day', 'UK MetOffice global model point data generated on a 4km grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'uk_global_interpolated_v0', 'computer system', 'point','1 day', 'UK MetOffice global model point data generated on a 4km grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'uk_global_interpolated_v0', 'uk_global_interpolated');
SELECT wci.adddataprovider( 'uk_global_interpolated_v1', 'computer system', 'point','1 day', 'UK MetOffice global model point data generated on a 4km grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'uk_global_interpolated_v1', 'uk_global_interpolated');

SELECT wci.adddataprovider( 'ecmwf_interpolated', 'data provider group', 'point','1 day', 'ECMWF model point data generated on a 0.5 grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovider( 'ecmwf_interpolated_v0', 'computer system', 'point','1 day', 'ECMWF model point data generated on a 0.5 grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'ecmwf_interpolated_v0', 'ecmwf_interpolated');

SELECT wci.adddataprovider( 'ecmwf025_interpolated', 'data provider group', 'point','1 day', 'ECMWF model point data generated on a 0.25 grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovidertogroup( 'ecmwf025_interpolated', 'ecmwf_interpolated');
SELECT wci.adddataprovider( 'ecmwf025_interpolated_v0', 'computer system', 'point','1 day', 'ECMWF model point data generated on a 0.25 grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'ecmwf025_interpolated_v0', 'ecmwf025_interpolated');
SELECT wci.adddataprovider( 'ecmwf025_interpolated_v1', 'computer system', 'point','1 day', 'ECMWF model point data generated on a 0.25 grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'ecmwf025_interpolated_v1', 'ecmwf025_interpolated');

SELECT wci.adddataprovider( 'ecmwf05_interpolated', 'data provider group', 'point','1 day', 'ECMWF model point data generated on a 0.5 grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovidertogroup( 'ecmwf05_interpolated', 'ecmwf_interpolated');
SELECT wci.adddataprovider( 'ecmwf05_interpolated_v0', 'computer system', 'point','1 day', 'ECMWF model point data generated on a 0.5 grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'ecmwf05_interpolated_v0', 'ecmwf05_interpolated');
SELECT wci.adddataprovider( 'ecmwf05_interpolated_v1', 'computer system', 'point','1 day', 'ECMWF model point data generated on a 0.5 grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'ecmwf05_interpolated_v1', 'ecmwf05_interpolated');

SELECT wci.adddataprovider( 'ecmwf15_interpolated', 'data provider group', 'point','1 day', 'ECMWF model point data generated on a 1.5 grid, interpolated at the Norwegian Meteorological Institute. All interpolation versions.' );
SELECT wci.adddataprovidertogroup( 'ecmwf15_interpolated', 'ecmwf_interpolated');
SELECT wci.adddataprovider( 'ecmwf15_interpolated_v0', 'computer system', 'point','1 day', 'ECMWF model point data generated on a 1.5 grid, interpolated using the miopdb loading programs operational at the time of loading (unknown interpolation).' );
SELECT wci.adddataprovidertogroup( 'ecmwf15_interpolated_v0', 'ecmwf15_interpolated');
SELECT wci.adddataprovider( 'ecmwf15_interpolated_v1', 'computer system', 'point','1 day', 'ECMWF model point data generated on a 1.5 grid, interpolated bilinearly using the WDB point from grid loading program, version 1.2.x.' );
SELECT wci.adddataprovidertogroup( 'ecmwf15_interpolated_v1', 'ecmwf15_interpolated');

-- Nowcasting data
SELECT wci.adddataprovider( 'nowcast', 'computer system', 'point','30 minutes', 'Very short-term weather forecast' );
