with 

source as (

    select * from {{ source('salesforce', 'product_2') }}

),

renamed as (

    select
        id as product_2_id,
        name as product_2_name,
        product_code,
        description as product_2_description,
        is_active,
        created_date,
        created_by_id,
        last_modified_date,
        last_modified_by_id,
        system_modstamp,
        family,
        external_data_source_id,
        external_id,
        display_url,
        quantity_unit_of_measure,
        is_deleted,
        is_archived,
        last_viewed_date,
        last_referenced_date,
        stock_keeping_unit,
        type,
        product_class,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed