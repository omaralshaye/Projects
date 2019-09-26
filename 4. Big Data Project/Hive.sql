--Create Intermediate Aggregate Table for Divvy Data**
create table DIVVY_AGGREGATE as
select year,
month,
day,
latitude_start,
longitude_start,
avg(temperature) as avgTemp,
count(*) as TotalTrips
from chicago_divvy_bike
where year >= 2014
group by
year,
month,
day,
latitude_start,
longitude_start

Total record count – 142223



--Create Intermediate Aggregate Table for Divvy Data**
create table divvy_aggregate_2 as
select substr(starttime,1,11) as dt,
latitude_start,
longitude_start,
temperature
from chicago_divvy_bike


--Create Intermediate Aggregate Table for Divvy Data**
create table divvy_aggregate_3 as
select dt,
latitude_start,
longitude_start,
avg(temperature) as avgTemp,
count(*) as TotalTrips
from divvy_aggregate_2
group by
dt,
latitude_start,
longitude_start

--Create Intermediate Aggregate Table for Chicago Taxi Data**

create table chicago_taxi_intrmd as
select substr(tripstarttimestamp,1,11) as dt,
pickupcommunityarea
from chicago_taxi


Total record count - 92055578

--Create Intermediate Aggregate Table for Chicago Taxi Data**

create table chicago_taxi_agg as
select dt,pickupcommunityarea,count(*) as tripCount from chicago_taxi_intrmd
where dt >= '01/01/2014'
group by dt,pickupcommunityarea

Total Record Count - 152374
