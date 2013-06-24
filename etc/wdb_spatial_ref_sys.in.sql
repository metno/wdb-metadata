select wci.begin( 'wdb', 88, 88, 88 );
select wci.addsrid( 'MetNo Polar Stereographic', '+proj=stere +lat_0=90 +lon_0=58 +lat_ts=60 +a=6371000 +units=m +no_defs' );
select wci.addsrid( 'Oslo Polar Stereographic', '+proj=stere +lat_0=90 +lon_0=24 +lat_ts=60 +a=6371000 +units=m +no_defs' );
select wci.addsrid( 'SeNorge UTM', '+proj=utm +lon_0=15 +datum=WGS84 +units=m +no_defs' );
select wci.addsrid( 'Probability forecasts', '+proj=longlat +R=6.371e+06 +no_defs' );
select wci.addsrid( 'Probability forecasts', '+proj=longlat +a=6367470 +e=0' );
select wci.addsrid( 'Probability forecasts', '+proj=lcc +lat_0=64.35 +lat_1=64.35 +lat_2=64.35 +lon_0=-23 +R=6371000 +x_0=-1.20288e+06 +y_0=396964' );
