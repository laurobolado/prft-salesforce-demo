{{ codegen.generate_source(
    database_name='db_dev_sales', 
    schema_name='salesforce', 
    table_names=['account', 'opportunity', 'user', 'user_role', 'contact', 'event', 'lead', 'opportunity_line_item', 'product_2', 'task'], 
    generate_columns=True,
    include_data_types=False
) }}