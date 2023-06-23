with

source  as (

    select * from {{ source('formula1','pit_stops') }}

), 

renamed as (
    select 
        race_id,
        driver_id,
        stop as stop_number,
        lap, 
        time as lap_time_formatted,
        duration as pit_stop_duration_seconds, 
        milliseconds as pit_stop_milliseconds
    from source
)

select * from renamed 
