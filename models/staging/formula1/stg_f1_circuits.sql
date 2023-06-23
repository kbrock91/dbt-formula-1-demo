with

source  as (

    select * from {{ source('formula1','circuits') }}

), 

renamed as (
    select 
        circuit_id,
        circuit_ref,
        name as circuit_name,
        location,
        country,
        lat as latitude,
        lng as longitude,
        alt as altitude
    from source
)
select * from renamed