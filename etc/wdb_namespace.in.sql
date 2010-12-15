-- Define the Namespaces
SELECT wci.addNameSpace( 88, 'Met.no standard namespace', 'The standard namespace used for Met.no applications that do not utilize the default namespace', 'production', 'met.no', 'MiA', '2000-01-01' );

-- Default Namespace of this installation
SELECT wci.setDefaultNameSpace( '', 88, 88, 88 );