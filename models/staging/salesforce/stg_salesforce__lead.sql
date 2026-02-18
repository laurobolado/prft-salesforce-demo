with 

source as (

    select * from {{ source('salesforce', 'lead') }}

),

renamed as (

    select
        id as lead_id,
        is_deleted,
        master_record_id,
        last_name,
        first_name,
        salutation,
        name,
        title,
        company,
        street,
        city,
        state,
        postal_code,
        country,
        state_code,
        country_code,
        latitude,
        longitude,
        geocode_accuracy,
        phone,
        mobile_phone,
        fax,
        email,
        website,
        photo_url,
        description,
        lead_source,
        status,
        industry,
        rating,
        annual_revenue,
        number_of_employees,
        owner_id,
        is_converted,
        converted_date,
        converted_account_id,
        converted_contact_id,
        converted_opportunity_id,
        is_unread_by_owner,
        created_date,
        created_by_id,
        last_modified_date,
        last_modified_by_id,
        system_modstamp,
        last_activity_date,
        last_viewed_date,
        last_referenced_date,
        jigsaw,
        jigsaw_contact_id,
        clean_status,
        company_duns_number,
        dandb_company_id,
        email_bounced_reason,
        email_bounced_date,
        individual_id,
        is_priority_record,
        siccode_c,
        product_interest_c,
        primary_c,
        current_generators_c,
        numberof_locations_c,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed