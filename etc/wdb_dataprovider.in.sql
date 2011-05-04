-- Data Providers
select wci.begin( 'wdb', 88, 88, 88 );

--- PROFF Data
select wci.adddataprovider( 'proff',   'data provider group', 'any', '1 day', 'Field data produced in the PROFF system' );
select wci.adddataprovider( 'proff.raw', 'computer system', 'grid', '1 day', 'proff.raw' );
select wci.adddataprovidertogroup( 'proff.raw', 'proff');
select wci.adddataprovider( 'proff.h12', 'computer system', 'grid', '1 day', 'proff.h12' );
select wci.adddataprovidertogroup( 'proff.h12', 'proff');
select wci.adddataprovider( 'proff.h12h8', 'computer system', 'grid', '1 day', 'proff.h12h8' );
select wci.adddataprovidertogroup( 'proff.h12h8', 'proff');
select wci.adddataprovider( 'proff.h12h8h4', 'computer system', 'grid', '1 day', 'proff.h12h8h4' );
select wci.adddataprovidertogroup( 'proff.h12h8h4', 'proff');
select wci.adddataprovider( 'proff.h12h4', 'computer system', 'grid', '1 day', 'proff.h12h4' );
select wci.adddataprovidertogroup( 'proff.h12h4', 'proff');
select wci.adddataprovider( 'proff.h12um4', 'computer system', 'grid', '1 day', 'proff.h12um4' );
select wci.adddataprovidertogroup( 'proff.h12um4', 'proff');
select wci.adddataprovider( 'proff.h12h8h4vind', 'computer system', 'grid', '1 day', 'proff.h12h8h4vind' );
select wci.adddataprovidertogroup( 'proff.h12h8h4vind', 'proff');
select wci.adddataprovider( 'proff.h12h8um4', 'computer system', 'grid', '1 day', 'proff.h12h8um4' );
select wci.adddataprovidertogroup( 'proff.h12h8um4', 'proff');
select wci.adddataprovider( 'proff.default', 'computer system', 'grid', '1 day', 'proff.default' );
select wci.adddataprovidertogroup( 'proff.default', 'proff');
select wci.adddataprovider( 'proff.approved', 'computer system', 'grid', '1 day', 'proff.approved' );
select wci.adddataprovidertogroup( 'proff.approved', 'proff');

--- ECMWF Data
select wci.adddataprovider( 'ecmwf atmospheric', 'data provider group', 'grid', '1 day', 'The ECMWF atmospheric' );
select wci.adddataprovider( 'ecmwf atmospheric 35r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 35r1' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 35r1', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 35r2', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 35r2' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 35r2', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 35r3', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 35r3' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 35r3', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 36r1', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 36r1' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 36r1', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 36r2', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 36r2' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 36r2', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 36r3', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 36r3' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 36r3', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 36r4', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 36r4' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 36r4', 'ecmwf atmospheric');
select wci.adddataprovider( 'ecmwf atmospheric 37r2', 'computer system', 'grid', '1 day', 'ECMWF atmospheric development cycle 37r2' );
select wci.adddataprovidertogroup( 'ecmwf atmospheric 37r2', 'ecmwf atmospheric');

-- ECMWF Data (repackaged at met.no)
select wci.adddataprovider( 'ecmwf felt', 'data provider group', 'grid', '1 day', 'ECMWF fields packaged as FELT files' );
select wci.adddataprovider( 'ecmwf felt 103', 'computer system', 'grid', '1 day', 'ECMWF field packaged as FELT files' );
select wci.adddataprovidertogroup( 'ecmwf felt 103', 'ecmwf felt');
select wci.adddataprovider( 'ecmwf felt 104', 'computer system', 'grid', '1 day', 'ECMWF field packaged as FELT files' );
select wci.adddataprovidertogroup( 'ecmwf felt 104', 'ecmwf felt');
select wci.adddataprovider( 'ecmwf felt 105', 'computer system', 'grid', '1 day', 'ECMWF field packaged as FELT files' );
select wci.adddataprovidertogroup( 'ecmwf felt 105', 'ecmwf felt');
select wci.adddataprovider( 'ecmwf felt 106', 'computer system', 'grid', '1 day', 'ECMWF field packaged as FELT files' );
select wci.adddataprovidertogroup( 'ecmwf felt 106', 'ecmwf felt');

-- Norwegian Forecast Data
select wci.adddataprovider( 'hirlam norway', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'wam norway', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'pgen_probability yr', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'pgen_percentile yr', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'trheimsleia', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'vestland', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'arctic', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'north sea', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'ss eps', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'north sea skagen', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'barents', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'bodoloppa', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'oslo fjord', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'nordic', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'senorge', 'computer system', 'grid', '1 day', 'Local norwegian field data' );
select wci.adddataprovider( 'yr corrected', 'computer system', 'grid', '1 day', 'Local norwegian field data' );

-- Miscellaneous
select wci.adddataprovider( 'met.no eceps modification', 'computer system', 'grid', '1 day', 'Modified EC EPS data used in the PROFF system' );
select wci.adddataprovider( 'statkart.no', 'organization', 'grid', '1000 years', 'Statens Kartverk' );

select wci.adddataprovider( 'hpc forecast', 'computer system', 'grid', '1 day', 'National Weather Service Hydrometeorological Prediction Center Forecast' );

---10300|0|proff.forecaster|2000-01-01T00:00:00Z|2000-01-01T00:00:00Z|10300|10301
---88150|0|proff eps|2000-01-01T00:00:00Z|2000-01-01T00:00:00Z|88150|88151
---88960|0|wam|2000-01-01T00:00:00Z|2000-01-01T00:00:00Z|88960|88961
