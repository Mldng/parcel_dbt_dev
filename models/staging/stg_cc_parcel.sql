WITH stg_cc_parcel_product AS(
    SELECT *
    FROM {{ref("stg_cc_parcel_products")}}
)
SELECT
cp.Parcel_id as parcel_id
,Parcel_tracking as parcel_tracking
,Transporter as transporter
,Priority as priority
,PARSE_DATE("%B %e, %Y", Date_purCHase) AS date_purchase
,PARSE_DATE("%B %e, %Y", Date_sHIpping) AS date_shipping
,PARSE_DATE("%B %e, %Y", DATE_delivery) AS date_delivery
,PARSE_DATE("%B %e, %Y", DaTeCANcelled) AS date_cancelled
,stg_cc_parcel_product.model_name
FROM raw_data_circle.raw_cc_parcel cp
LEFT JOIN stg_cc_parcel_product ON stg_cc_parcel_product.parcel_id = cp.Parcel_id