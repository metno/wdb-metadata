-- Define the Namespaces
SELECT wci.addNameSpace( 88, 'Met.no standard namespace', 'The standard namespace used for Met.no applications that do not utilize the default namespace', 'production', 'met.no', 'MiA', '2000-01-01' );
SELECT wci.addNameSpace( 88000, 'Climate number series (Met.no)', 'This is a namespace used for listing so-called climate number series used for internal identification of observation stations.', 'production', 'met.no', 'MiA', '2000-01-01' );
SELECT wci.addNameSpace( 88001, 'WMO number series (Met.no)', 'This is a namespace used for listing WMO numbers. Each name in the namespace corresponds to a WMO number.', 'production', 'met.no', 'MiA', '2000-01-01' );
SELECT wci.addNameSpace( 88002, 'MIOPDB number series (Met.no)', 'This is a namespace used for listing station numbers from the MIOPDB database. These numbers are similar to the climate number series, but not consistent with the data we have in ST_INFO_SYS.', 'production', 'met.no', 'MiA', '2013-06-12' );

-- Default Namespace of this installation
SELECT wci.setDefaultNameSpace( '', 88, 88, 88 );