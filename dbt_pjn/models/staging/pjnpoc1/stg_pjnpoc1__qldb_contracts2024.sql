with 

source as (

    select * from {{ source('pjnpoc1', 'qldb_contracts2024') }}

),

renamed as (

    select
        blockaddress,
        transactionid,
        blocktimestamp,
        blockhash,
        entrieshash,
        previousblockhash,
        entrieshashlist,
        transactioninfo,
        partition_0,
        partition_1,
        partition_2

    from source

)

select * from renamed
