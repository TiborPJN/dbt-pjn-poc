with 

source as (

    select * from {{ source('pjnpoc1', 'volatile_consumerorderpaymentsuccessevent') }}

),

renamed as (

    select
        id,
        origin_event_id,
        reference,
        reference_note,
        type,
        name,
        created,
        received,
        status,
        data,
        version,
        source_environment,
        source_module,
        source_component,
        source_db_urn,
        partition_0,
        partition_1,
        partition_2,
        partition_3

    from source

)

select * from renamed
