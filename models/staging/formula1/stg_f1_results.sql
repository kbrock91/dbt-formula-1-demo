with

source  as (

    select * from {{ source('formula1','results') }}

), 

renamed as (
    select 
        result_id,
        race_id,
        driver_id,
        constructor_id,
        number as driver_number,
        grid, 
        position::int as position,
        position_text,
        position_order,
        points,
        laps,
        time as results_time_formatted, 
        milliseconds as results_milliseconds,
        fastest_lap,
        rank as results_rank,
        fastest_lap_time as fastest_lap_time_formatted,
        fastest_lap_speed::decimal(6,3) as fastest_lap_speed, 
        status_id
    from source
)

select * from renamed 