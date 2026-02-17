with 

source as (

    select * from {{ source('salesforce', 'user_role') }}

),

renamed as (

    select
        id as user_role_id,
        name as user_role_name,
        parent_role_id,
        rollup_description,
        opportunity_access_for_account_owner,
        case_access_for_account_owner,
        contact_access_for_account_owner,
        forecast_user_id,
        may_forecast_manager_share,
        last_modified_date,
        last_modified_by_id,
        system_modstamp,
        developer_name,
        portal_account_id,
        portal_type,
        portal_account_owner_id,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed