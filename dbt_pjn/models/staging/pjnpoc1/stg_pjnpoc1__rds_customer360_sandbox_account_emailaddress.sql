with 

source as (

    select * from {{ source('pjnpoc1', 'rds_customer360_sandbox_account_emailaddress') }}

),

renamed as (

    select
        id,
        email,
        verified,
        primary,
        user_id,
        partition_0

    from source

)

select * from renamed
