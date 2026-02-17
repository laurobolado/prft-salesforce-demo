with 

source as (

    select * from {{ source('salesforce', 'opportunity_line_item') }}

),

renamed as (

    select
        id as opportunity_line_item_id,
        opportunity_id,
        sort_order,
        pricebook_entry_id,
        product_2_id,
        product_code,
        name as opportunity_line_item_name,
        quantity,
        total_price,
        unit_price,
        list_price,
        service_date,
        description as opportunity_line_item_description,
        created_date,
        created_by_id,
        last_modified_date,
        last_modified_by_id,
        system_modstamp,
        is_deleted,
        last_viewed_date,
        last_referenced_date,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed