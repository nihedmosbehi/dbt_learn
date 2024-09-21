{{ config(materialized='table') }}

with source_data as (

    select project_id as id,name, creation_date, guideline as guideline_id
    from public.projects
)

select *
from source_data

