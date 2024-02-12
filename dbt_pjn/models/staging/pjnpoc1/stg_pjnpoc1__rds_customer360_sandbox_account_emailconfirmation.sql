with 

source as (

    select * from {{ source('pjnpoc1', 'rds_customer360_sandbox_account_emailconfirmation') }}

),

renamed as (

    select
        id,
        created,
        sent,
        key,
        email_address_id,
        partition_0

    from source

)

select * from renamed
