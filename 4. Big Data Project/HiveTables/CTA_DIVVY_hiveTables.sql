drop table atal.CHICAGO_CTA_BUS;
create external table atal.CHICAGO_CTA_BUS (
route string,
 routename string,
 Month_Beginning string,
 Avg_Weekday_Rides string,
 Avg_Saturday_Rides string,
 Avg_Sunday_Holiday_Rides string,
 MonthTotal string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = '\"',
   "escapeChar"    = '\\')
STORED AS TEXTFILE
LOCATION '/user/atal/data/BigDataProject/'
tblproperties("skip.header.line.count"="1");

drop table atal.CHICAGO_CTA_TRAIN;
create external table atal.CHICAGO_CTA_TRAIN (
  station_id string,
  stationname  string,
  ridedate  string,
  daytype  string,
  rides string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = '\"',
   "escapeChar"    = '\\')
STORED AS TEXTFILE
LOCATION '/user/atal/data/BigDataProject/'
tblproperties("skip.header.line.count"="1");

drop table atal.CHICAGO_DIVVY_BIKE;
create external table atal.CHICAGO_DIVVY_BIKE (
  trip_id string,
   year string,
   month string,
   week string,
   day string,
   hour string,
   usertype string,
   gender string,
   starttime string,
   stoptime string,
   tripduration string,
   temperature string,
   events string,
   from_station_id string,
   from_station_name string,
   latitude_start string,
   longitude_start string,
   dpcapacity_start string,
   to_station_id string,
   to_station_name string,
   latitude_end string,
   longitude_end string,
   dpcapacity_end string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = '\"',
   "escapeChar"    = '\\')
STORED AS TEXTFILE
LOCATION '/user/atal/data/BigDataProject/'
tblproperties("skip.header.line.count"="1");
