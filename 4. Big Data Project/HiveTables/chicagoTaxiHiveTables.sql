create external table atal.CHICAGO_TAXI (
  TripID string,
   TaxiID string,
   TripStartTimestamp string,
   TripEndTimestamp string,
   TripSeconds string,
   TripMiles string,
   PickupCensusTract string,
   DropoffCensusTract string,
   PickupCommunityArea string,
   DropoffCommunityArea string,
   Fare string,
   Tips string,
   Tolls string,
   Extras string,
   TripTotal string,
   PaymentType string,
   Company string,
   PickupCentroidLatitude string,
   PickupCentroidLongitude string,
   PickupCentroidLocation string,
   DropoffCentroidLatitude string,
   DropoffCentroidLongitude string,
   DropoffCentroidLocation string,
   CommunityAreas string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = '\"',
   "escapeChar"    = '\\')
STORED AS TEXTFILE
LOCATION '/user/atal/data/'
tblproperties("skip.header.line.count"="1");
