with 

source as (

    select * from {{ source('salesforce', 'order') }}

),

renamed as (

    select
        id as order_id,
        owner_id,
        contract_id,
        account_id,
        pricebook_2_id,
        original_order_id,
        effective_date,
        end_date,
        is_reduction_order,
        status,
        description,
        customer_authorized_by_id,
        customer_authorized_date,
        company_authorized_by_id,
        company_authorized_date,
        type,
        billing_street,
        billing_city,
        billing_state,
        billing_postal_code,
        billing_country,
        billing_state_code,
        billing_country_code,
        billing_latitude,
        billing_longitude,
        billing_geocode_accuracy,
        shipping_street,
        shipping_city,
        shipping_state,
        shipping_postal_code,
        shipping_country,
        shipping_state_code,
        shipping_country_code,
        shipping_latitude,
        shipping_longitude,
        shipping_geocode_accuracy,
        name,
        po_date,
        po_number,
        order_reference_number,
        bill_to_contact_id,
        ship_to_contact_id,
        activated_date,
        activated_by_id,
        status_code,
        order_number,
        total_amount,
        created_date,
        created_by_id,
        last_modified_date,
        last_modified_by_id,
        is_deleted,
        system_modstamp,
        last_viewed_date,
        last_referenced_date,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed