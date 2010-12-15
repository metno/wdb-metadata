SELECT wci.begin( 'wdb', 0, 0, 0 );
-- MetNo Specific Parameters
SELECT wci.addparameter( 'kalman air temperature', null, null, null, null, null, null, 'K' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, 'local 20th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, 'local 50th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, 'local 80th percentile', 'kg/m2' );
SELECT wci.addparameter( 'probability of precipitation', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'vessel icing index', null, null, null, null, null, null, 'none' );
SELECT wci.addparameter( 'lwe thickness of precipitation amount', null, null, null, null, null, null, 'm' );
SELECT wci.addparameter( 'unsmoothed land area fraction', null, null, null, null, null, null, '%' );

-- Load all default parameters into namespace
SELECT wci.begin( 'wdb', 88, 88, 88 );
SELECT wci.setparametername( v.parametername, 
							 __WCI_SCHEMA__.getparametername( v.cfstandardname,
							 							      v.cfsurface,
							 					   			  v.cfcomponent,
							 					   			  v.cfmedium,
							 					   			  v.cfprocess,
							 					   			  v.cfcondition,
							 					    		  v.cfmethods ) )
FROM	__WCI_SCHEMA__.parameter v
WHERE	parameternamespaceid = 0;
