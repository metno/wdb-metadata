-- Load all default parameters into namespace
SELECT wci.begin( 'wdb', 88, 88, 88 );
SELECT wci.copyParameterNameSpace( 0 );

-- MetNo
SELECT wci.addparameter( 'kalman air temperature', null, null, null, null, null, null, 'K' );
SELECT wci.addparameter( 'probability of precipitation', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'unsmoothed altitude', null, null, null, null, null, null, 'm' );
SELECT wci.addparameter( 'sea ice presence', null, null, null, null, null, null, 'none' );
SELECT wci.addparameter( 'vessel icing index', null, null, null, null, null, null, 'none' );
SELECT wci.addparameter( 'unsmoothed land area fraction', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of wind speed', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'yr weather symbol', null, null, null, null, null, null, 'none' );
SELECT wci.addparameter( 'probability of yr weather symbol', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'air temperature', null, null, null, null, null, '10th percentile', 'K' );
SELECT wci.addparameter( 'air temperature', null, null, null, null, null, '25th percentile', 'K' );
SELECT wci.addparameter( 'air temperature', null, null, null, null, null, '50th percentile', 'K' );
SELECT wci.addparameter( 'air temperature', null, null, null, null, null, '75th percentile', 'K' );
SELECT wci.addparameter( 'air temperature', null, null, null, null, null, '90th percentile', 'K' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, '10th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, '25th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, '50th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, '75th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, '90th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, 'local 20th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, 'local 50th percentile', 'kg/m2' );
SELECT wci.addparameter( 'precipitation amount', null, null, null, null, null, 'local 80th percentile', 'kg/m2' );
SELECT wci.addparameter( 'probability of precipitation', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of precipitation >0.1mm', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of precipitation >0.2mm', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of precipitation >0.5mm', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of precipitation >1.0mm', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of precipitation >2.0mm', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of precipitation >5.0mm', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of air temperature +/-1.5', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'probability of air temperature +/-2.5', null, null, null, null, null, null, '%' );
SELECT wci.addparameter( 'peak wave plane angle', null, null, null, null, null, null, 'rad' );
