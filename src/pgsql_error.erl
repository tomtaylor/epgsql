-module(pgsql_error).
-author("Steven Gravell <steve@mokele.co.uk>").

-export([atom/1]).

-include("pgsql.hrl").

atom(#error{code=Code}) ->
  atom(Code);

%% @see http://www.postgresql.org/docs/9.0/static/errcodes-appendix.html
atom(<<"00000">>) -> successful_completion;
atom(<<"01000">>) -> warning;
atom(<<"0100C">>) -> dynamic_result_sets_returned;
atom(<<"01008">>) -> implicit_zero_bit_padding;
atom(<<"01003">>) -> null_value_eliminated_in_set_function;
atom(<<"01007">>) -> privilege_not_granted;
atom(<<"01006">>) -> privilege_not_revoked;
atom(<<"01004">>) -> string_data_right_truncation;
atom(<<"01P01">>) -> deprecated_feature;
atom(<<"02000">>) -> no_data;
atom(<<"02001">>) -> no_additional_dynamic_result_sets_returned;
atom(<<"03000">>) -> sql_statement_not_yet_complete;
atom(<<"08000">>) -> connection_exception;
atom(<<"08003">>) -> connection_does_not_exist;
atom(<<"08006">>) -> connection_failure;
atom(<<"08001">>) -> sqlclient_unable_to_establish_sqlconnection;
atom(<<"08004">>) -> sqlserver_rejected_establishment_of_sqlconnection;
atom(<<"08007">>) -> transaction_resolution_unknown;
atom(<<"08P01">>) -> protocol_violation;
atom(<<"09000">>) -> triggered_action_exception;
atom(<<"0A000">>) -> feature_not_supported;
atom(<<"0B000">>) -> invalid_transaction_initiation;
atom(<<"0F000">>) -> locator_exception;
atom(<<"0F001">>) -> invalid_locator_specification;
atom(<<"0L000">>) -> invalid_grantor;
atom(<<"0LP01">>) -> invalid_grant_operation;
atom(<<"0P000">>) -> invalid_role_specification;
atom(<<"20000">>) -> case_not_found;
atom(<<"21000">>) -> cardinality_violation;
atom(<<"22000">>) -> data_exception;
atom(<<"2202E">>) -> array_subscript_error;
atom(<<"22021">>) -> character_not_in_repertoire;
atom(<<"22008">>) -> datetime_field_overflow;
atom(<<"22012">>) -> division_by_zero;
atom(<<"22005">>) -> error_in_assignment;
atom(<<"2200B">>) -> escape_character_conflict;
atom(<<"22022">>) -> indicator_overflow;
atom(<<"22015">>) -> interval_field_overflow;
atom(<<"2201E">>) -> invalid_argument_for_logarithm;
atom(<<"22014">>) -> invalid_argument_for_ntile_function;
atom(<<"22016">>) -> invalid_argument_for_nth_value_function;
atom(<<"2201F">>) -> invalid_argument_for_power_function;
atom(<<"2201G">>) -> invalid_argument_for_width_bucket_function;
atom(<<"22018">>) -> invalid_character_value_for_cast;
atom(<<"22007">>) -> invalid_datetime_format;
atom(<<"22019">>) -> invalid_escape_character;
atom(<<"2200D">>) -> invalid_escape_octet;
atom(<<"22025">>) -> invalid_escape_sequence;
atom(<<"22P06">>) -> nonstandard_use_of_escape_character;
atom(<<"22010">>) -> invalid_indicator_parameter_value;
atom(<<"22023">>) -> invalid_parameter_value;
atom(<<"2201B">>) -> invalid_regular_expression;
atom(<<"2201W">>) -> invalid_row_count_in_limit_clause;
atom(<<"2201X">>) -> invalid_row_count_in_result_offset_clause;
atom(<<"22009">>) -> invalid_time_zone_displacement_value;
atom(<<"2200C">>) -> invalid_use_of_escape_character;
atom(<<"2200G">>) -> most_specific_type_mismatch;
atom(<<"22004">>) -> null_value_not_allowed;
atom(<<"22002">>) -> null_value_no_indicator_parameter;
atom(<<"22003">>) -> numeric_value_out_of_range;
atom(<<"22026">>) -> string_data_length_mismatch;
atom(<<"22001">>) -> string_data_right_truncation;
atom(<<"22011">>) -> substring_error;
atom(<<"22027">>) -> trim_error;
atom(<<"22024">>) -> unterminated_c_string;
atom(<<"2200F">>) -> zero_length_character_string;
atom(<<"22P01">>) -> floating_point_exception;
atom(<<"22P02">>) -> invalid_text_representation;
atom(<<"22P03">>) -> invalid_binary_representation;
atom(<<"22P04">>) -> bad_copy_file_format;
atom(<<"22P05">>) -> untranslatable_character;
atom(<<"2200L">>) -> not_an_xml_document;
atom(<<"2200M">>) -> invalid_xml_document;
atom(<<"2200N">>) -> invalid_xml_content;
atom(<<"2200S">>) -> invalid_xml_comment;
atom(<<"2200T">>) -> invalid_xml_processing_instruction;
atom(<<"23000">>) -> integrity_constraint_violation;
atom(<<"23001">>) -> restrict_violation;
atom(<<"23502">>) -> not_null_violation;
atom(<<"23503">>) -> foreign_key_violation;
atom(<<"23505">>) -> unique_violation;
atom(<<"23514">>) -> check_violation;
atom(<<"23P01">>) -> exclusion_violation;
atom(<<"24000">>) -> invalid_cursor_state;
atom(<<"25000">>) -> invalid_transaction_state;
atom(<<"25001">>) -> active_sql_transaction;
atom(<<"25002">>) -> branch_transaction_already_active;
atom(<<"25008">>) -> held_cursor_requires_same_isolation_level;
atom(<<"25003">>) -> inappropriate_access_mode_for_branch_transaction;
atom(<<"25004">>) -> inappropriate_isolation_level_for_branch_transaction;
atom(<<"25005">>) -> no_active_sql_transaction_for_branch_transaction;
atom(<<"25006">>) -> read_only_sql_transaction;
atom(<<"25007">>) -> schema_and_data_statement_mixing_not_supported;
atom(<<"25P01">>) -> no_active_sql_transaction;
atom(<<"25P02">>) -> in_failed_sql_transaction;
atom(<<"26000">>) -> invalid_sql_statement_name;
atom(<<"27000">>) -> triggered_data_change_violation;
atom(<<"28000">>) -> invalid_authorization_specification;
atom(<<"28P01">>) -> invalid_password;
atom(<<"2B000">>) -> dependent_privilege_descriptors_still_exist;
atom(<<"2BP01">>) -> dependent_objects_still_exist;
atom(<<"2D000">>) -> invalid_transaction_termination;
atom(<<"2F000">>) -> sql_routine_exception;
atom(<<"2F005">>) -> function_executed_no_return_statement;
atom(<<"2F002">>) -> modifying_sql_data_not_permitted;
atom(<<"2F003">>) -> prohibited_sql_statement_attempted;
atom(<<"2F004">>) -> reading_sql_data_not_permitted;
atom(<<"34000">>) -> invalid_cursor_name;
atom(<<"38000">>) -> external_routine_exception;
atom(<<"38001">>) -> containing_sql_not_permitted;
atom(<<"38002">>) -> modifying_sql_data_not_permitted;
atom(<<"38003">>) -> prohibited_sql_statement_attempted;
atom(<<"38004">>) -> reading_sql_data_not_permitted;
atom(<<"39000">>) -> external_routine_invocation_exception;
atom(<<"39001">>) -> invalid_sqlstate_returned;
atom(<<"39004">>) -> null_value_not_allowed;
atom(<<"39P01">>) -> trigger_protocol_violated;
atom(<<"39P02">>) -> srf_protocol_violated;
atom(<<"3B000">>) -> savepoint_exception;
atom(<<"3B001">>) -> invalid_savepoint_specification;
atom(<<"3D000">>) -> invalid_catalog_name;
atom(<<"3F000">>) -> invalid_schema_name;
atom(<<"40000">>) -> transaction_rollback;
atom(<<"40002">>) -> transaction_integrity_constraint_violation;
atom(<<"40001">>) -> serialization_failure;
atom(<<"40003">>) -> statement_completion_unknown;
atom(<<"40P01">>) -> deadlock_detected;
atom(<<"42000">>) -> syntax_error_or_access_rule_violation;
atom(<<"42601">>) -> syntax_error;
atom(<<"42501">>) -> insufficient_privilege;
atom(<<"42846">>) -> cannot_coerce;
atom(<<"42803">>) -> grouping_error;
atom(<<"42P20">>) -> windowing_error;
atom(<<"42P19">>) -> invalid_recursion;
atom(<<"42830">>) -> invalid_foreign_key;
atom(<<"42602">>) -> invalid_name;
atom(<<"42622">>) -> name_too_long;
atom(<<"42939">>) -> reserved_name;
atom(<<"42804">>) -> datatype_mismatch;
atom(<<"42P18">>) -> indeterminate_datatype;
atom(<<"42809">>) -> wrong_object_type;
atom(<<"42703">>) -> undefined_column;
atom(<<"42883">>) -> undefined_function;
atom(<<"42P01">>) -> undefined_table;
atom(<<"42P02">>) -> undefined_parameter;
atom(<<"42704">>) -> undefined_object;
atom(<<"42701">>) -> duplicate_column;
atom(<<"42P03">>) -> duplicate_cursor;
atom(<<"42P04">>) -> duplicate_database;
atom(<<"42723">>) -> duplicate_function;
atom(<<"42P05">>) -> duplicate_prepared_statement;
atom(<<"42P06">>) -> duplicate_schema;
atom(<<"42P07">>) -> duplicate_table;
atom(<<"42712">>) -> duplicate_alias;
atom(<<"42710">>) -> duplicate_object;
atom(<<"42702">>) -> ambiguous_column;
atom(<<"42725">>) -> ambiguous_function;
atom(<<"42P08">>) -> ambiguous_parameter;
atom(<<"42P09">>) -> ambiguous_alias;
atom(<<"42P10">>) -> invalid_column_reference;
atom(<<"42611">>) -> invalid_column_definition;
atom(<<"42P11">>) -> invalid_cursor_definition;
atom(<<"42P12">>) -> invalid_database_definition;
atom(<<"42P13">>) -> invalid_function_definition;
atom(<<"42P14">>) -> invalid_prepared_statement_definition;
atom(<<"42P15">>) -> invalid_schema_definition;
atom(<<"42P16">>) -> invalid_table_definition;
atom(<<"42P17">>) -> invalid_object_definition;
atom(<<"44000">>) -> with_check_option_violation;
atom(<<"53000">>) -> insufficient_resources;
atom(<<"53100">>) -> disk_full;
atom(<<"53200">>) -> out_of_memory;
atom(<<"53300">>) -> too_many_connections;
atom(<<"54000">>) -> program_limit_exceeded;
atom(<<"54001">>) -> statement_too_complex;
atom(<<"54011">>) -> too_many_columns;
atom(<<"54023">>) -> too_many_arguments;
atom(<<"55000">>) -> object_not_in_prerequisite_state;
atom(<<"55006">>) -> object_in_use;
atom(<<"55P02">>) -> cant_change_runtime_param;
atom(<<"55P03">>) -> lock_not_available;
atom(<<"57000">>) -> operator_intervention;
atom(<<"57014">>) -> query_canceled;
atom(<<"57P01">>) -> admin_shutdown;
atom(<<"57P02">>) -> crash_shutdown;
atom(<<"57P03">>) -> cannot_connect_now;
atom(<<"58030">>) -> io_error;
atom(<<"58P01">>) -> undefined_file;
atom(<<"58P02">>) -> duplicate_file;
atom(<<"F0000">>) -> config_file_error;
atom(<<"F0001">>) -> lock_file_exists;
atom(<<"P0000">>) -> plpgsql_error;
atom(<<"P0001">>) -> raise_exception;
atom(<<"P0002">>) -> no_data_found;
atom(<<"P0003">>) -> too_many_rows;
atom(<<"XX000">>) -> internal_error;
atom(<<"XX001">>) -> data_corrupted;
atom(<<"XX002">>) -> index_corrupted;

atom(_) -> unknown.
