with 

source as (

    select * from {{ source('pjnpoc1', 'pjnevents.durable_riskselfiepersonverifyevent2') }}

),

renamed as (

    select

    from source

)

select * from renamed
