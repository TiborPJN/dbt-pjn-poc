with 

source as (

    select * from {{ source('pjnpoc1', 'qldb_merchantbalance2024') }}

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
        revisions,
        partition_0,
        partition_1,
        partition_2

    from source

)

select * from renamed
