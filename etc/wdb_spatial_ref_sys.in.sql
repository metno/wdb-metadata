select wci.begin( 'wdb', 88, 88, 88 );
select wci.addsrid( 'MetNo Polar Stereographic', '+proj=stere +lat_0=90 +lon_0=58 +lat_ts=60 +a=6371000 +units=m +no_defs' );
select wci.addsrid( 'Oslo Polar Stereographic', '+proj=stere +lat_0=90 +lon_0=24 +lat_ts=60 +a=6371000 +units=m +no_defs' );
select wci.addsrid( 'SeNorge UTM', '+proj=utm +lon_0=15 +datum=WGS84 +units=m +no_defs' );
