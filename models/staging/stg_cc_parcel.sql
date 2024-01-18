
SELECT
cp.Parcel_id as parcel_id
,Parcel_tracking as parcel_tracking
,Transporter as transporter
,Priority as priority
,PARSE_DATE("%B %e, %Y", Date_purCHase) AS date_purchase
,PARSE_DATE("%B %e, %Y", Date_sHIpping) AS date_shipping
,PARSE_DATE("%B %e, %Y", DATE_delivery) AS date_delivery
,PARSE_DATE("%B %e, %Y", DaTeCANcelled) AS date_cancelled
FROM raw_data_circle.raw_cc_parcel cp