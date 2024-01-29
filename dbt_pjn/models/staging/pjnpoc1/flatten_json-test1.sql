--WITH source AS (
--  SELECT data AS mydata
--)
--SELECT
--  json_extract(mydata, '$.id_number') AS id_number FROM source

WITH pjnpoc1 AS (
  SELECT JSON_EXTRACT(data, '$.id_number') AS item_json
  FROM
    {{ source('pjnpoc1', 'consumerorderactivatedevent_consumerorderactivatedevent') }}
),