# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "aa_test_final_results", :id => false, :force => true do |t|
    t.string   "testcase_id", :limit => 512
    t.string   "package_key", :limit => 100
    t.datetime "timestamp"
    t.integer  "passes"
    t.integer  "fails"
  end

  create_table "aa_test_results", :id => false, :force => true do |t|
    t.string   "testcase_id", :limit => 512
    t.string   "package_key", :limit => 100
    t.integer  "test_id"
    t.datetime "timestamp"
    t.string   "result",      :limit => 4
    t.string   "notes",       :limit => 2000
  end

  create_table "acs_activities", :id => false, :force => true do |t|
    t.integer "activity_id",                       :null => false
    t.string  "name",                              :null => false
    t.text    "description"
    t.boolean "html_p",         :default => false
    t.string  "status_summary"
  end

  create_table "acs_activity_object_map", :id => false, :force => true do |t|
    t.integer "activity_id", :null => false
    t.integer "object_id",   :null => false
  end

  create_table "acs_attribute_descriptions", :id => false, :force => true do |t|
    t.string "object_type",     :limit => 100, :null => false
    t.string "attribute_name",  :limit => 100, :null => false
    t.string "description_key", :limit => 100, :null => false
    t.text   "description",                    :null => false
  end

  add_index "acs_attribute_descriptions", ["attribute_name"], :name => "acs_attr_desc_attr_name_idx"
  add_index "acs_attribute_descriptions", ["object_type"], :name => "acs_attr_desc_obj_type_idx"

  create_table "acs_attribute_values", :id => false, :force => true do |t|
    t.integer "object_id",    :null => false
    t.integer "attribute_id", :null => false
    t.text    "attr_value"
  end

  add_index "acs_attribute_values", ["attribute_id"], :name => "acs_attr_values_attr_id_idx"

  create_table "acs_attributes", :id => false, :force => true do |t|
    t.integer "attribute_id",                                               :null => false
    t.string  "object_type",    :limit => 100,                              :null => false
    t.string  "table_name",     :limit => 30
    t.string  "attribute_name", :limit => 100,                              :null => false
    t.string  "pretty_name",    :limit => 100,                              :null => false
    t.string  "pretty_plural",  :limit => 100
    t.integer "sort_order",                                                 :null => false
    t.string  "datatype",       :limit => 50,                               :null => false
    t.text    "default_value"
    t.integer "min_n_values",                  :default => 1,               :null => false
    t.integer "max_n_values",                  :default => 1,               :null => false
    t.string  "storage",        :limit => 13,  :default => "type_specific"
    t.boolean "static_p",                      :default => false
    t.string  "column_name",    :limit => 30
  end

  add_index "acs_attributes", ["attribute_id", "sort_order"], :name => "acs_attributes_sort_order_un", :unique => true
  add_index "acs_attributes", ["attribute_name", "object_type"], :name => "acs_attributes_attr_name_un", :unique => true
  add_index "acs_attributes", ["datatype"], :name => "acs_attrs_datatype_idx"
  add_index "acs_attributes", ["object_type"], :name => "acs_attrs_obj_type_idx"
  add_index "acs_attributes", ["pretty_name", "object_type"], :name => "acs_attributes_pretty_name_un", :unique => true
  add_index "acs_attributes", ["table_name"], :name => "acs_attrs_tbl_name_idx"

  create_table "acs_contents", :id => false, :force => true do |t|
    t.integer "content_id",                                            :null => false
    t.integer "content"
    t.boolean "searchable_p",                :default => true
    t.string  "nls_language", :limit => 50
    t.string  "mime_type",    :limit => 200, :default => "text/plain"
  end

  create_table "acs_data_links", :id => false, :force => true do |t|
    t.integer "rel_id",        :null => false
    t.integer "object_id_one", :null => false
    t.integer "object_id_two", :null => false
  end

  add_index "acs_data_links", ["object_id_one", "object_id_two"], :name => "acs_data_links_un", :unique => true
  add_index "acs_data_links", ["object_id_one"], :name => "acs_data_links_id_one_idx"
  add_index "acs_data_links", ["object_id_two"], :name => "acs_data_links_id_two_idx"

  create_table "acs_datatypes", :id => false, :force => true do |t|
    t.string  "datatype",     :limit => 50,                :null => false
    t.integer "max_n_values",               :default => 1
  end

  create_table "acs_enum_values", :id => false, :force => true do |t|
    t.integer "attribute_id",                 :null => false
    t.string  "enum_value",   :limit => 1000, :null => false
    t.string  "pretty_name",  :limit => 100,  :null => false
    t.integer "sort_order",                   :null => false
  end

  add_index "acs_enum_values", ["attribute_id", "pretty_name"], :name => "acs_enum_values_pretty_name_un", :unique => true
  add_index "acs_enum_values", ["attribute_id", "sort_order"], :name => "acs_enum_values_sort_order_un", :unique => true
  add_index "acs_enum_values", ["attribute_id"], :name => "acs_enum_values_attr_id_idx"

  create_table "acs_event_party_map", :id => false, :force => true do |t|
    t.integer "event_id", :null => false
    t.integer "party_id", :null => false
  end

  create_table "acs_events", :id => false, :force => true do |t|
    t.integer "event_id",               :null => false
    t.string  "name"
    t.text    "description"
    t.boolean "html_p"
    t.string  "status_summary"
    t.integer "activity_id"
    t.integer "timespan_id"
    t.integer "recurrence_id"
    t.text    "related_link_url"
    t.text    "related_link_text"
    t.boolean "redirect_to_rel_link_p"
  end

  add_index "acs_events", ["activity_id"], :name => "acs_events_activity_id_ids"
  add_index "acs_events", ["recurrence_id"], :name => "acs_events_recurrence_id_idx"

  create_table "acs_function_args", :id => false, :force => true do |t|
    t.string  "function",    :limit => 100, :null => false
    t.integer "arg_seq",                    :null => false
    t.string  "arg_name",    :limit => 100
    t.string  "arg_default", :limit => 100
  end

  add_index "acs_function_args", ["function", "arg_name"], :name => "acs_function_args_un", :unique => true

  create_table "acs_logs", :id => false, :force => true do |t|
    t.integer  "log_id",                   :null => false
    t.datetime "log_date",                 :null => false
    t.string   "log_level", :limit => 20,  :null => false
    t.string   "log_key",   :limit => 100, :null => false
    t.text     "message",                  :null => false
  end

  create_table "acs_magic_objects", :id => false, :force => true do |t|
    t.string  "name",      :limit => 100, :null => false
    t.integer "object_id",                :null => false
  end

  add_index "acs_magic_objects", ["object_id"], :name => "acs_mo_object_id_idx"

  create_table "acs_mail_bodies", :id => false, :force => true do |t|
    t.integer  "body_id",                           :null => false
    t.integer  "body_reply_to"
    t.integer  "body_from"
    t.datetime "body_date"
    t.string   "header_message_id", :limit => 1000, :null => false
    t.string   "header_reply_to",   :limit => 1000
    t.text     "header_subject"
    t.text     "header_from"
    t.text     "header_to"
    t.integer  "content_item_id"
  end

  add_index "acs_mail_bodies", ["body_from"], :name => "acs_mail_bodies_body_from_idx"
  add_index "acs_mail_bodies", ["body_reply_to"], :name => "acs_mail_bodies_body_reply_idx"
  add_index "acs_mail_bodies", ["content_item_id"], :name => "acs_mail_bodies_item_id_idx"
  add_index "acs_mail_bodies", ["header_message_id"], :name => "acs_mail_bodies_h_m_id_un", :unique => true

  create_table "acs_mail_body_headers", :id => false, :force => true do |t|
    t.integer "body_id"
    t.string  "header_name",    :limit => 1000
    t.text    "header_content"
  end

  add_index "acs_mail_body_headers", ["body_id"], :name => "acs_mail_body_hdrs_body_id_idx"

  create_table "acs_mail_gc_objects", :id => false, :force => true do |t|
    t.integer "gc_object_id", :null => false
  end

  create_table "acs_mail_links", :id => false, :force => true do |t|
    t.integer "mail_link_id", :null => false
    t.integer "body_id",      :null => false
  end

  add_index "acs_mail_links", ["body_id"], :name => "acs_mail_links_body_id_idx"

  create_table "acs_mail_lite_bounce", :id => false, :force => true do |t|
    t.integer "user_id",                     :null => false
    t.integer "bounce_count", :default => 1
  end

  create_table "acs_mail_lite_bounce_notif", :id => false, :force => true do |t|
    t.integer  "user_id",                           :null => false
    t.datetime "notification_time"
    t.integer  "notification_count", :default => 0
  end

  create_table "acs_mail_lite_mail_log", :id => false, :force => true do |t|
    t.integer  "user_id",        :null => false
    t.datetime "last_mail_date"
  end

  create_table "acs_mail_lite_queue", :id => false, :force => true do |t|
    t.integer "message_id",                   :null => false
    t.string  "to_addr",       :limit => 200
    t.string  "from_addr",     :limit => 200
    t.string  "subject",       :limit => 200
    t.text    "body"
    t.text    "extra_headers"
    t.text    "bcc"
    t.integer "package_id"
    t.boolean "valid_email_p"
  end

  create_table "acs_mail_multipart_parts", :id => false, :force => true do |t|
    t.integer "multipart_id",                     :null => false
    t.string  "mime_filename",    :limit => 1000
    t.string  "mime_disposition", :limit => 1000
    t.integer "sequence_number",                  :null => false
    t.integer "content_item_id"
  end

  add_index "acs_mail_multipart_parts", ["content_item_id"], :name => "acs_mail_mpp_cr_item_id_idx"

  create_table "acs_mail_multiparts", :id => false, :force => true do |t|
    t.integer "multipart_id",                  :null => false
    t.string  "multipart_kind", :limit => 120, :null => false
  end

  create_table "acs_mail_queue_incoming", :id => false, :force => true do |t|
    t.integer "message_id",    :null => false
    t.text    "envelope_from"
    t.text    "envelope_to"
  end

  create_table "acs_mail_queue_messages", :id => false, :force => true do |t|
    t.integer "message_id", :null => false
  end

  create_table "acs_mail_queue_outgoing", :id => false, :force => true do |t|
    t.integer "message_id",    :null => false
    t.text    "envelope_from"
    t.text    "envelope_to",   :null => false
  end

  create_table "acs_messages", :id => false, :force => true do |t|
    t.integer  "message_id",                  :null => false
    t.integer  "reply_to"
    t.datetime "sent_date",                   :null => false
    t.integer  "sender"
    t.string   "rfc822_id",    :limit => 250, :null => false
    t.string   "tree_sortkey", :limit => nil
  end

  add_index "acs_messages", ["reply_to"], :name => "acs_messages_reply_to_idx"
  add_index "acs_messages", ["rfc822_id"], :name => "acs_messages_rfc822_id_un", :unique => true
  add_index "acs_messages", ["sender"], :name => "acs_messages_sender_idx"
  add_index "acs_messages", ["sent_date"], :name => "acs_messages_sent_idx"
  add_index "acs_messages", ["tree_sortkey"], :name => "acs_messages_tree_skey_idx"

  create_table "acs_messages_outgoing", :id => false, :force => true do |t|
    t.integer  "message_id",                  :null => false
    t.string   "to_address",  :limit => 1000, :null => false
    t.integer  "grouping_id"
    t.datetime "wait_until",                  :null => false
  end

  create_table "acs_named_objects", :id => false, :force => true do |t|
    t.integer "object_id",                  :null => false
    t.string  "object_name", :limit => 200
    t.integer "package_id"
  end

  add_index "acs_named_objects", ["object_name"], :name => "acs_named_objs_name_ix"
  add_index "acs_named_objects", ["package_id"], :name => "acs_named_objs_package_ix"

  create_table "acs_object_context_index", :id => false, :force => true do |t|
    t.integer "object_id",     :null => false
    t.integer "ancestor_id",   :null => false
    t.integer "n_generations", :null => false
  end

  add_index "acs_object_context_index", ["ancestor_id"], :name => "acs_obj_ctx_idx_ancestor_idx"

  create_table "acs_object_type_tables", :id => false, :force => true do |t|
    t.string "object_type", :limit => 100, :null => false
    t.string "table_name",  :limit => 30,  :null => false
    t.string "id_column",   :limit => 30
  end

  add_index "acs_object_type_tables", ["object_type"], :name => "acs_objtype_tbls_objtype_idx"

  create_table "acs_object_types", :id => false, :force => true do |t|
    t.string  "object_type",          :limit => 100,                    :null => false
    t.string  "supertype",            :limit => 100
    t.boolean "abstract_p",                          :default => false, :null => false
    t.string  "pretty_name",          :limit => 100,                    :null => false
    t.string  "pretty_plural",        :limit => 100,                    :null => false
    t.string  "table_name",           :limit => 30,                     :null => false
    t.string  "id_column",            :limit => 30,                     :null => false
    t.string  "package_name",         :limit => 30,                     :null => false
    t.string  "name_method",          :limit => 100
    t.string  "type_extension_table", :limit => 30
    t.boolean "dynamic_p",                           :default => false
    t.string  "tree_sortkey",         :limit => nil
  end

  add_index "acs_object_types", ["package_name"], :name => "acs_object_types_pkg_name_un", :unique => true
  add_index "acs_object_types", ["pretty_name"], :name => "acs_obj_types_pretty_name_un", :unique => true
  add_index "acs_object_types", ["pretty_plural"], :name => "acs_obj_types_pretty_plural_un", :unique => true
  add_index "acs_object_types", ["supertype"], :name => "acs_obj_types_supertype_idx"
  add_index "acs_object_types", ["table_name"], :name => "acs_object_types_table_name_un", :unique => true
  add_index "acs_object_types", ["tree_sortkey"], :name => "acs_obj_types_tree_skey_idx"

  create_table "acs_objects", :id => false, :force => true do |t|
    t.integer  "object_id",                                            :null => false
    t.string   "object_type",        :limit => 100,                    :null => false
    t.integer  "context_id"
    t.boolean  "security_inherit_p",                 :default => true, :null => false
    t.integer  "creation_user"
    t.datetime "creation_date",                                        :null => false
    t.string   "creation_ip",        :limit => 50
    t.datetime "last_modified",                                        :null => false
    t.integer  "modifying_user"
    t.string   "modifying_ip",       :limit => 50
    t.string   "tree_sortkey",       :limit => nil,                    :null => false
    t.string   "max_child_sortkey",  :limit => nil
    t.string   "title",              :limit => 1000
    t.integer  "package_id"
  end

  add_index "acs_objects", ["context_id", "object_id"], :name => "acs_objects_context_object_un", :unique => true
  add_index "acs_objects", ["creation_user"], :name => "acs_objects_creation_user_idx"
  add_index "acs_objects", ["modifying_user"], :name => "acs_objects_modify_user_idx"
  add_index "acs_objects", ["object_type"], :name => "acs_objects_object_type_idx"
  add_index "acs_objects", ["package_id", "object_id"], :name => "acs_objects_package_object_idx"
  add_index "acs_objects", ["title"], :name => "acs_objects_title_idx"
  add_index "acs_objects", ["tree_sortkey"], :name => "acs_objects_tree_sortkey_un", :unique => true

  create_table "acs_permissions", :id => false, :force => true do |t|
    t.integer "object_id",                 :null => false
    t.integer "grantee_id",                :null => false
    t.string  "privilege",  :limit => 100, :null => false
  end

  add_index "acs_permissions", ["grantee_id"], :name => "acs_permissions_grantee_idx"
  add_index "acs_permissions", ["privilege"], :name => "acs_permissions_privilege_idx"

  create_table "acs_permissions_lock", :id => false, :force => true do |t|
    t.integer "lck"
  end

  create_table "acs_privilege_descendant_map", :id => false, :force => true do |t|
    t.string "privilege",  :limit => 100, :null => false
    t.string "descendant", :limit => 100, :null => false
  end

  add_index "acs_privilege_descendant_map", ["descendant"], :name => "acs_priv_desc_map_idx"

  create_table "acs_privilege_hierarchy", :id => false, :force => true do |t|
    t.string "privilege",       :limit => 100, :null => false
    t.string "child_privilege", :limit => 100, :null => false
  end

  add_index "acs_privilege_hierarchy", ["child_privilege"], :name => "acs_priv_hier_child_priv_idx"

  create_table "acs_privilege_hierarchy_index", :id => false, :force => true do |t|
    t.string "privilege",       :limit => 100, :null => false
    t.string "child_privilege", :limit => 100, :null => false
    t.string "tree_sortkey",    :limit => nil
  end

  add_index "acs_privilege_hierarchy_index", ["tree_sortkey"], :name => "priv_hier_sortkey_idx"

  create_table "acs_privileges", :id => false, :force => true do |t|
    t.string "privilege",     :limit => 100, :null => false
    t.string "pretty_name",   :limit => 100
    t.string "pretty_plural", :limit => 100
  end

  create_table "acs_reference_repositories", :id => false, :force => true do |t|
    t.integer  "repository_id",                   :null => false
    t.string   "table_name",      :limit => 100,  :null => false
    t.boolean  "internal_data_p"
    t.string   "package_name",    :limit => 100
    t.datetime "last_update"
    t.string   "source",          :limit => 1000
    t.string   "source_url"
    t.datetime "effective_date"
    t.datetime "expiry_date"
    t.integer  "maintainer_id"
    t.integer  "lob"
  end

  add_index "acs_reference_repositories", ["package_name"], :name => "arr_package_name_uq", :unique => true
  add_index "acs_reference_repositories", ["table_name"], :name => "arr_table_name_uq", :unique => true

  create_table "acs_rel_roles", :id => false, :force => true do |t|
    t.string "role",          :limit => 100, :null => false
    t.string "pretty_name",   :limit => 100, :null => false
    t.string "pretty_plural", :limit => 100, :null => false
  end

  create_table "acs_rel_types", :id => false, :force => true do |t|
    t.string  "rel_type",        :limit => 100,                :null => false
    t.string  "object_type_one", :limit => 100,                :null => false
    t.string  "role_one",        :limit => 100
    t.integer "min_n_rels_one",                 :default => 0, :null => false
    t.integer "max_n_rels_one"
    t.string  "object_type_two", :limit => 100,                :null => false
    t.string  "role_two",        :limit => 100
    t.integer "min_n_rels_two",                 :default => 0, :null => false
    t.integer "max_n_rels_two"
  end

  add_index "acs_rel_types", ["object_type_one"], :name => "acs_rel_types_objtypeone_idx"
  add_index "acs_rel_types", ["object_type_two"], :name => "acs_rel_types_objtypetwo_idx"
  add_index "acs_rel_types", ["role_one"], :name => "acs_rel_types_role_one_idx"
  add_index "acs_rel_types", ["role_two"], :name => "acs_rel_types_role_two_idx"

  create_table "acs_rels", :id => false, :force => true do |t|
    t.integer "rel_id",                       :null => false
    t.string  "rel_type",      :limit => 100, :null => false
    t.integer "object_id_one",                :null => false
    t.integer "object_id_two",                :null => false
  end

  add_index "acs_rels", ["object_id_one"], :name => "acs_rels_object_id_one_idx"
  add_index "acs_rels", ["object_id_two"], :name => "acs_rels_object_id_two_idx"
  add_index "acs_rels", ["rel_type", "object_id_one", "object_id_two"], :name => "acs_object_rels_un", :unique => true

  create_table "acs_sc_bindings", :id => false, :force => true do |t|
    t.integer "contract_id"
    t.integer "impl_id"
  end

  create_table "acs_sc_contracts", :id => false, :force => true do |t|
    t.integer "contract_id",                   :null => false
    t.string  "contract_name", :limit => 1000, :null => false
    t.text    "contract_desc",                 :null => false
  end

  add_index "acs_sc_contracts", ["contract_name"], :name => "acs_sc_contracts_name_un", :unique => true

  create_table "acs_sc_impl_aliases", :id => false, :force => true do |t|
    t.integer "impl_id"
    t.string  "impl_name",           :limit => 100
    t.string  "impl_contract_name",  :limit => 1000
    t.string  "impl_operation_name", :limit => 100
    t.string  "impl_alias",          :limit => 100
    t.string  "impl_pl",             :limit => 100
  end

  add_index "acs_sc_impl_aliases", ["impl_name", "impl_contract_name", "impl_operation_name"], :name => "acs_sc_impl_alias_un", :unique => true

  create_table "acs_sc_impls", :id => false, :force => true do |t|
    t.integer "impl_id",                            :null => false
    t.string  "impl_name",          :limit => 100
    t.string  "impl_owner_name",    :limit => 1000
    t.string  "impl_contract_name", :limit => 1000
    t.string  "impl_pretty_name",   :limit => 200
  end

  create_table "acs_sc_msg_type_elements", :id => false, :force => true do |t|
    t.integer "msg_type_id"
    t.string  "element_name",             :limit => 100
    t.integer "element_msg_type_id"
    t.boolean "element_msg_type_isset_p"
    t.integer "element_pos"
  end

  create_table "acs_sc_msg_types", :id => false, :force => true do |t|
    t.integer "msg_type_id",                  :null => false
    t.string  "msg_type_name", :limit => 100
  end

  add_index "acs_sc_msg_types", ["msg_type_name"], :name => "acs_sc_msg_types_name_un", :unique => true

  create_table "acs_sc_operations", :id => false, :force => true do |t|
    t.integer "contract_id"
    t.integer "operation_id",                            :null => false
    t.string  "contract_name",           :limit => 1000
    t.string  "operation_name",          :limit => 100
    t.text    "operation_desc",                          :null => false
    t.boolean "operation_iscachable_p"
    t.integer "operation_nargs"
    t.integer "operation_inputtype_id"
    t.integer "operation_outputtype_id"
  end

  create_table "acs_static_attr_values", :id => false, :force => true do |t|
    t.string  "object_type",  :limit => 100, :null => false
    t.integer "attribute_id",                :null => false
    t.text    "attr_value"
  end

  add_index "acs_static_attr_values", ["attribute_id"], :name => "acs_stat_attrs_attr_id_idx"

  create_table "ad_locale_user_prefs", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "package_id"
    t.string  "locale",     :limit => 30, :null => false
  end

  create_table "ad_locales", :id => false, :force => true do |t|
    t.string  "locale",        :limit => 30,                     :null => false
    t.string  "language",      :limit => 2,                      :null => false
    t.string  "country",       :limit => 2,                      :null => false
    t.string  "variant",       :limit => 30
    t.string  "label",         :limit => 200,                    :null => false
    t.string  "nls_language",  :limit => 30,                     :null => false
    t.string  "nls_territory", :limit => 30
    t.string  "nls_charset",   :limit => 30
    t.string  "mime_charset",  :limit => 30
    t.boolean "default_p",                    :default => false
    t.boolean "enabled_p",                    :default => true
  end

  add_index "ad_locales", ["label"], :name => "ad_locale_name_unq", :unique => true

  create_table "ad_template_sample_users", :id => false, :force => true do |t|
    t.integer "user_id",                  :null => false
    t.string  "first_name", :limit => 20
    t.string  "last_name",  :limit => 20
    t.string  "address1",   :limit => 40
    t.string  "address2",   :limit => 40
    t.string  "city",       :limit => 40
    t.string  "state",      :limit => 2
  end

  create_table "admin_rels", :id => false, :force => true do |t|
    t.integer "rel_id", :null => false
  end

  create_table "am_meeting", :id => false, :force => true do |t|
    t.integer  "meeting_id",   :null => false
    t.integer  "type_id",      :null => false
    t.datetime "meeting_date", :null => false
  end

  add_index "am_meeting", ["type_id"], :name => "am_meeting_mtg_type_id_idx"

  create_table "am_meeting_todo", :id => false, :force => true do |t|
    t.integer "todo_id",                                         :null => false
    t.integer "meeting_id"
    t.string  "description",     :limit => 200,                  :null => false
    t.integer "assignee",                                        :null => false
    t.string  "completed_p",     :limit => 1,   :default => "f"
    t.text    "completion_note"
  end

  add_index "am_meeting_todo", ["assignee"], :name => "am_meeting_todo_ass_id_idx"
  add_index "am_meeting_todo", ["meeting_id"], :name => "am_meeting_todo_meet_id_idx"

  create_table "am_meeting_type", :id => false, :force => true do |t|
    t.integer "type_id",                :null => false
    t.string  "title",   :limit => 100, :null => false
  end

  create_table "am_meeting_type_participants", :id => false, :force => true do |t|
    t.integer "type_id", :null => false
    t.integer "user_id", :null => false
  end

  create_table "apm_applications", :id => false, :force => true do |t|
    t.integer "application_id", :null => false
  end

  create_table "apm_package_callbacks", :id => false, :force => true do |t|
    t.integer "version_id"
    t.string  "type",       :limit => 40
    t.string  "proc",       :limit => 300
  end

  add_index "apm_package_callbacks", ["version_id", "type"], :name => "apm_package_callbacks_vt_un", :unique => true

  create_table "apm_package_db_types", :id => false, :force => true do |t|
    t.string "db_type_key",    :limit => 50,  :null => false
    t.string "pretty_db_name", :limit => 200, :null => false
  end

  create_table "apm_package_dependencies", :id => false, :force => true do |t|
    t.integer "dependency_id",                   :null => false
    t.integer "version_id",                      :null => false
    t.string  "dependency_type", :limit => 20,   :null => false
    t.string  "service_uri",     :limit => 1500, :null => false
    t.string  "service_version", :limit => 100,  :null => false
  end

  add_index "apm_package_dependencies", ["version_id", "service_uri"], :name => "apm_package_deps_un", :unique => true

  create_table "apm_package_owners", :id => false, :force => true do |t|
    t.integer "version_id"
    t.string  "owner_uri",  :limit => 1500
    t.string  "owner_name", :limit => 200,  :null => false
    t.integer "sort_key"
  end

  add_index "apm_package_owners", ["version_id"], :name => "apm_pkg_owners_version_idx"

  create_table "apm_package_types", :id => false, :force => true do |t|
    t.string  "package_key",       :limit => 100,                     :null => false
    t.string  "pretty_name",       :limit => 100,                     :null => false
    t.string  "pretty_plural",     :limit => 100
    t.string  "package_uri",       :limit => 1500,                    :null => false
    t.string  "package_type",      :limit => 300
    t.string  "spec_file_path",    :limit => 1500
    t.integer "spec_file_mtime"
    t.boolean "initial_install_p",                 :default => false, :null => false
    t.boolean "singleton_p",                       :default => false, :null => false
  end

  add_index "apm_package_types", ["package_uri"], :name => "apm_packages_types_p_uri_un", :unique => true
  add_index "apm_package_types", ["pretty_name"], :name => "apm_package_types_pretty_n_un", :unique => true
  add_index "apm_package_types", ["pretty_plural"], :name => "apm_package_types_pretty_pl_un", :unique => true

  create_table "apm_package_version_attr", :id => false, :force => true do |t|
    t.integer "version_id",                      :null => false
    t.string  "attribute_name",  :limit => 100,  :null => false
    t.string  "attribute_value", :limit => 4000
  end

  create_table "apm_package_versions", :id => false, :force => true do |t|
    t.integer  "version_id",                                             :null => false
    t.string   "package_key",         :limit => 100,                     :null => false
    t.string   "version_name",        :limit => 100,                     :null => false
    t.string   "version_uri",         :limit => 1500,                    :null => false
    t.string   "summary",             :limit => 3000
    t.string   "description_format",  :limit => 100
    t.text     "description"
    t.datetime "release_date"
    t.string   "vendor",              :limit => 500
    t.string   "vendor_uri",          :limit => 1500
    t.boolean  "enabled_p",                           :default => false, :null => false
    t.boolean  "installed_p",                         :default => false, :null => false
    t.boolean  "tagged_p",                            :default => false, :null => false
    t.boolean  "imported_p",                          :default => false, :null => false
    t.boolean  "data_model_loaded_p",                 :default => false, :null => false
    t.text     "cvs_import_results"
    t.datetime "activation_date"
    t.datetime "deactivation_date"
    t.integer  "item_id"
    t.integer  "content_length"
    t.string   "distribution_uri",    :limit => 1500
    t.datetime "distribution_date"
    t.string   "auto_mount",          :limit => 50
  end

  add_index "apm_package_versions", ["package_key", "version_name"], :name => "apm_package_vers_id_name_un", :unique => true
  add_index "apm_package_versions", ["version_uri"], :name => "apm_package_vers_ver_uri_un", :unique => true

  create_table "apm_packages", :id => false, :force => true do |t|
    t.integer "package_id",                    :null => false
    t.string  "package_key",    :limit => 100
    t.string  "instance_name",  :limit => 300, :null => false
    t.string  "default_locale", :limit => 30
  end

  add_index "apm_packages", ["package_key"], :name => "apm_packages_package_key_idx"

  create_table "apm_parameter_values", :id => false, :force => true do |t|
    t.integer "value_id",     :null => false
    t.integer "package_id"
    t.integer "parameter_id"
    t.text    "attr_value"
  end

  add_index "apm_parameter_values", ["package_id", "parameter_id"], :name => "apm_parameter_values_un", :unique => true
  add_index "apm_parameter_values", ["parameter_id"], :name => "apm_par_vals_parameter_idx"

  create_table "apm_parameters", :id => false, :force => true do |t|
    t.integer "parameter_id",                                  :null => false
    t.string  "package_key",    :limit => 100,                 :null => false
    t.string  "parameter_name", :limit => 100,                 :null => false
    t.string  "description",    :limit => 2000
    t.string  "section_name",   :limit => 200
    t.string  "datatype",       :limit => 100,                 :null => false
    t.text    "default_value"
    t.integer "min_n_values",                   :default => 1, :null => false
    t.integer "max_n_values",                   :default => 1, :null => false
  end

  add_index "apm_parameters", ["package_key"], :name => "apm_parameters_package_idx"
  add_index "apm_parameters", ["parameter_name", "package_key"], :name => "apm_paramters_attr_name_un", :unique => true

  create_table "apm_services", :id => false, :force => true do |t|
    t.integer "service_id", :null => false
  end

  create_table "application_groups", :id => false, :force => true do |t|
    t.integer "group_id",   :null => false
    t.integer "package_id"
  end

  add_index "application_groups", ["package_id"], :name => "app_groups_package_id_un", :unique => true

  create_table "attachments", :id => false, :force => true do |t|
    t.integer "object_id",                                :null => false
    t.integer "item_id",                                  :null => false
    t.string  "approved_p", :limit => 1, :default => "t", :null => false
  end

  add_index "attachments", ["item_id"], :name => "attachments_item_id_idx"

  create_table "attachments_fs_root_folder_map", :id => false, :force => true do |t|
    t.integer "package_id", :null => false
    t.integer "folder_id",  :null => false
  end

  add_index "attachments_fs_root_folder_map", ["folder_id"], :name => "attachments_fsr_fm_folder_id_i"
  add_index "attachments_fs_root_folder_map", ["package_id"], :name => "attach_fldr_map_package_id_un", :unique => true

  create_table "auth_authorities", :id => false, :force => true do |t|
    t.integer "authority_id",                                                :null => false
    t.string  "short_name"
    t.string  "pretty_name",              :limit => 4000
    t.string  "help_contact_text",        :limit => 4000
    t.string  "help_contact_text_format", :limit => 200
    t.boolean "enabled_p",                                :default => true,  :null => false
    t.integer "sort_order",                                                  :null => false
    t.integer "auth_impl_id"
    t.integer "pwd_impl_id"
    t.string  "forgotten_pwd_url",        :limit => 4000
    t.string  "change_pwd_url",           :limit => 4000
    t.integer "register_impl_id"
    t.string  "register_url",             :limit => 4000
    t.integer "user_info_impl_id"
    t.integer "get_doc_impl_id"
    t.integer "process_doc_impl_id"
    t.boolean "batch_sync_enabled_p",                     :default => false, :null => false
  end

  add_index "auth_authorities", ["short_name"], :name => "auth_authority_short_name_un", :unique => true

  create_table "auth_batch_job_entries", :id => false, :force => true do |t|
    t.integer  "entry_id",                        :null => false
    t.integer  "job_id"
    t.datetime "entry_time"
    t.string   "operation",        :limit => 100
    t.string   "username",         :limit => 100
    t.integer  "user_id"
    t.boolean  "success_p",                       :null => false
    t.text     "message"
    t.text     "element_messages"
  end

  add_index "auth_batch_job_entries", ["job_id"], :name => "auth_batch_job_ent_job_idx"
  add_index "auth_batch_job_entries", ["user_id"], :name => "auth_batch_job_ent_user_idx"

  create_table "auth_batch_jobs", :id => false, :force => true do |t|
    t.integer  "job_id",         :null => false
    t.datetime "job_start_time"
    t.datetime "job_end_time"
    t.boolean  "interactive_p",  :null => false
    t.boolean  "snapshot_p"
    t.integer  "authority_id"
    t.text     "message"
    t.integer  "creation_user"
    t.datetime "doc_start_time"
    t.datetime "doc_end_time"
    t.text     "doc_status"
    t.text     "doc_message"
    t.text     "document"
  end

  add_index "auth_batch_jobs", ["authority_id"], :name => "auth_batch_jobs_auth_idx"
  add_index "auth_batch_jobs", ["creation_user"], :name => "auth_batch_jobs_user_idx"

  create_table "auth_driver_params", :id => false, :force => true do |t|
    t.integer "authority_id",                :null => false
    t.integer "impl_id",                     :null => false
    t.string  "key",          :limit => 200, :null => false
    t.text    "value"
  end

  create_table "cal_item_types", :id => false, :force => true do |t|
    t.integer "item_type_id",                :null => false
    t.integer "calendar_id",                 :null => false
    t.string  "type",         :limit => 100, :null => false
  end

  add_index "cal_item_types", ["calendar_id", "item_type_id"], :name => "cal_item_types_un", :unique => true

  create_table "cal_items", :id => false, :force => true do |t|
    t.integer "cal_item_id",       :null => false
    t.integer "on_which_calendar"
    t.integer "item_type_id"
  end

  add_index "cal_items", ["on_which_calendar"], :name => "cal_items_on_which_calendar_idx"

  create_table "cal_party_prefs", :id => false, :force => true do |t|
    t.integer "calendar_id"
    t.integer "party_id"
    t.string  "default_view",      :limit => 10,                               :default => "day"
    t.integer "default_duration",                                              :default => 60
    t.integer "daily_start",       :limit => 2,  :precision => 2, :scale => 0, :default => 7
    t.integer "daily_end",         :limit => 2,  :precision => 2, :scale => 0, :default => 18
    t.integer "time_zone"
    t.string  "first_day_of_week", :limit => 9,                                :default => "Sunday"
  end

  add_index "cal_party_prefs", ["calendar_id", "party_id"], :name => "cal_party_prefs_un", :unique => true

  create_table "calendars", :id => false, :force => true do |t|
    t.integer "calendar_id",                                     :null => false
    t.string  "calendar_name", :limit => 200
    t.integer "owner_id"
    t.integer "package_id"
    t.boolean "private_p",                    :default => false
  end

  create_table "categories", :id => false, :force => true do |t|
    t.integer "category_id",                                :null => false
    t.integer "tree_id"
    t.integer "parent_id"
    t.string  "deprecated_p", :limit => 1, :default => "f"
    t.integer "left_ind"
    t.integer "right_ind"
  end

  add_index "categories", ["parent_id", "category_id"], :name => "categories_parent_ix"
  add_index "categories", ["tree_id", "left_ind"], :name => "categories_left_ix"

  create_table "category_links", :id => false, :force => true do |t|
    t.integer "link_id",          :null => false
    t.integer "from_category_id", :null => false
    t.integer "to_category_id",   :null => false
  end

  add_index "category_links", ["from_category_id", "to_category_id"], :name => "category_links_un", :unique => true
  add_index "category_links", ["to_category_id", "from_category_id"], :name => "category_links_rev_ix", :unique => true

  create_table "category_object_map", :id => false, :force => true do |t|
    t.integer "category_id", :null => false
    t.integer "object_id",   :null => false
  end

  add_index "category_object_map", ["object_id", "category_id"], :name => "cat_object_map_ix", :unique => true

  create_table "category_search", :id => false, :force => true do |t|
    t.integer  "query_id",                                    :null => false
    t.string   "search_text",   :limit => 200,                :null => false
    t.string   "locale",        :limit => 5,                  :null => false
    t.integer  "queried_count",                :default => 1, :null => false
    t.datetime "last_queried",                                :null => false
  end

  add_index "category_search", ["last_queried"], :name => "category_search_date_ix"
  add_index "category_search", ["search_text", "locale"], :name => "category_search_query_un", :unique => true

  create_table "category_search_index", :id => false, :force => true do |t|
    t.integer "query_id",              :null => false
    t.string  "trigram",  :limit => 3, :null => false
  end

  add_index "category_search_index", ["query_id"], :name => "category_search_ind_query_ix"
  add_index "category_search_index", ["trigram"], :name => "category_search_ind_trigram_ix"

  create_table "category_search_results", :id => false, :force => true do |t|
    t.integer "query_id",   :null => false
    t.integer "synonym_id", :null => false
    t.integer "similarity", :null => false
  end

  add_index "category_search_results", ["query_id", "similarity"], :name => "category_results_similarity_ix"

  create_table "category_synonym_index", :id => false, :force => true do |t|
    t.integer "synonym_id",              :null => false
    t.string  "trigram",    :limit => 3, :null => false
  end

  add_index "category_synonym_index", ["synonym_id"], :name => "category_syn_index_synonym_ix"
  add_index "category_synonym_index", ["trigram"], :name => "category_syn_index_trigram_ix"

  create_table "category_synonyms", :id => false, :force => true do |t|
    t.integer "synonym_id",                                  :null => false
    t.integer "category_id",                                 :null => false
    t.string  "locale",      :limit => 5,                    :null => false
    t.string  "name",        :limit => 100,                  :null => false
    t.string  "synonym_p",   :limit => 1,   :default => "t"
  end

  add_index "category_synonyms", ["category_id", "locale"], :name => "category_synonyms_locale_ix"
  add_index "category_synonyms", ["category_id", "name"], :name => "category_synonyms_name_ix"

  create_table "category_temp", :id => false, :force => true do |t|
    t.integer "category_id"
  end

  create_table "category_translations", :id => false, :force => true do |t|
    t.integer "category_id",                 :null => false
    t.string  "locale",      :limit => 5,    :null => false
    t.string  "name",        :limit => 200
    t.string  "description", :limit => 4000
  end

  create_table "category_tree_map", :id => false, :force => true do |t|
    t.integer "tree_id",                                           :null => false
    t.integer "object_id",                                         :null => false
    t.integer "subtree_category_id"
    t.string  "assign_single_p",     :limit => 1, :default => "f"
    t.string  "require_category_p",  :limit => 1, :default => "f"
  end

  add_index "category_tree_map", ["tree_id", "object_id"], :name => "cat_tree_map_ix", :unique => true

  create_table "category_tree_translations", :id => false, :force => true do |t|
    t.integer "tree_id",                     :null => false
    t.string  "locale",      :limit => 5,    :null => false
    t.string  "name",        :limit => 50,   :null => false
    t.string  "description", :limit => 1000
  end

  create_table "category_trees", :id => false, :force => true do |t|
    t.integer "tree_id",                                   :null => false
    t.string  "site_wide_p", :limit => 1, :default => "t"
  end

  create_table "composition_rels", :id => false, :force => true do |t|
    t.integer "rel_id", :null => false
  end

  create_table "cr_child_rels", :id => false, :force => true do |t|
    t.integer "rel_id",                      :null => false
    t.integer "parent_id",                   :null => false
    t.integer "child_id",                    :null => false
    t.string  "relation_tag", :limit => 100
    t.integer "order_n"
  end

  add_index "cr_child_rels", ["parent_id", "child_id"], :name => "cr_child_rels_unq_id", :unique => true
  add_index "cr_child_rels", ["parent_id"], :name => "cr_child_rels_by_parent"

  create_table "cr_content_mime_type_map", :id => false, :force => true do |t|
    t.string "content_type", :limit => 100, :null => false
    t.string "mime_type",    :limit => 200, :null => false
  end

  add_index "cr_content_mime_type_map", ["mime_type"], :name => "cr_cont_mimetypmap_mimetyp_idx"

  create_table "cr_content_text", :id => false, :force => true do |t|
    t.integer "revision_id", :null => false
    t.integer "content"
  end

  create_table "cr_doc_filter", :id => false, :force => true do |t|
    t.integer "revision_id", :null => false
    t.integer "content"
  end

  create_table "cr_dummy", :id => false, :force => true do |t|
    t.integer "val"
  end

  create_table "cr_extension_mime_type_map", :id => false, :force => true do |t|
    t.string "extension", :limit => 200, :null => false
    t.string "mime_type", :limit => 200
  end

  add_index "cr_extension_mime_type_map", ["mime_type"], :name => "cr_extension_mime_type_map_idx"

  create_table "cr_extlinks", :id => false, :force => true do |t|
    t.integer "extlink_id",                  :null => false
    t.string  "url",         :limit => 1000, :null => false
    t.string  "label",       :limit => 1000, :null => false
    t.text    "description"
  end

  create_table "cr_files_to_delete", :id => false, :force => true do |t|
    t.string "path",             :limit => 250
    t.string "storage_area_key", :limit => 100
  end

  create_table "cr_folder_type_map", :id => false, :force => true do |t|
    t.integer "folder_id",                   :null => false
    t.string  "content_type", :limit => 100, :null => false
  end

  add_index "cr_folder_type_map", ["content_type"], :name => "cr_folder_typ_map_cont_typ_idx"

  create_table "cr_folders", :id => false, :force => true do |t|
    t.integer "folder_id",                                             :null => false
    t.string  "label",              :limit => 1000
    t.text    "description"
    t.boolean "has_child_folders",                  :default => false
    t.boolean "has_child_symlinks",                 :default => false
    t.integer "package_id"
  end

  add_index "cr_folders", ["package_id"], :name => "cr_folders_package_id_idx"

  create_table "cr_item_keyword_map", :id => false, :force => true do |t|
    t.integer "item_id",    :null => false
    t.integer "keyword_id", :null => false
  end

  add_index "cr_item_keyword_map", ["keyword_id"], :name => "cr_item_keyword_map_kw_id_idx"

  create_table "cr_item_publish_audit", :id => false, :force => true do |t|
    t.integer  "item_id"
    t.integer  "old_revision"
    t.integer  "new_revision"
    t.string   "old_status",   :limit => 40
    t.string   "new_status",   :limit => 40
    t.datetime "publish_date",               :null => false
  end

  add_index "cr_item_publish_audit", ["item_id"], :name => "cr_item_publish_audit_idx"

  create_table "cr_item_rels", :id => false, :force => true do |t|
    t.integer "rel_id",                           :null => false
    t.integer "item_id"
    t.integer "related_object_id"
    t.string  "relation_tag",      :limit => 100
    t.integer "order_n"
  end

  add_index "cr_item_rels", ["item_id", "related_object_id", "relation_tag"], :name => "cr_item_rel_unq", :unique => true
  add_index "cr_item_rels", ["related_object_id"], :name => "cr_item_rels_rel_obj_id_idx"

  create_table "cr_item_template_map", :id => false, :force => true do |t|
    t.integer "item_id",                    :null => false
    t.integer "template_id",                :null => false
    t.string  "use_context", :limit => 100, :null => false
  end

  add_index "cr_item_template_map", ["item_id"], :name => "cr_itmap_by_item_id"
  add_index "cr_item_template_map", ["template_id"], :name => "cr_itmap_by_template_id"
  add_index "cr_item_template_map", ["use_context"], :name => "cr_itmap_by_use_context"

  create_table "cr_items", :id => false, :force => true do |t|
    t.integer "item_id",                                                  :null => false
    t.integer "parent_id",                                                :null => false
    t.string  "name",              :limit => 400,                         :null => false
    t.string  "locale",            :limit => 4
    t.integer "live_revision"
    t.integer "latest_revision"
    t.string  "publish_status",    :limit => 40
    t.string  "content_type",      :limit => 100
    t.string  "storage_type",      :limit => 10,  :default => "text",     :null => false
    t.string  "storage_area_key",  :limit => 100, :default => "CR_FILES", :null => false
    t.string  "tree_sortkey",      :limit => nil,                         :null => false
    t.string  "max_child_sortkey", :limit => nil
  end

  add_index "cr_items", ["content_type"], :name => "cr_items_by_content_type"
  add_index "cr_items", ["latest_revision"], :name => "cr_items_by_latest_revision", :unique => true
  add_index "cr_items", ["live_revision"], :name => "cr_items_by_live_revision", :unique => true
  add_index "cr_items", ["locale"], :name => "cr_items_by_locale"
  add_index "cr_items", ["name"], :name => "cr_items_name"
  add_index "cr_items", ["parent_id", "item_id"], :name => "cr_items_unique_id", :unique => true
  add_index "cr_items", ["parent_id", "name"], :name => "cr_items_unique_name", :unique => true
  add_index "cr_items", ["parent_id"], :name => "cr_items_by_parent_id"
  add_index "cr_items", ["tree_sortkey"], :name => "cr_items_tree_sortkey_un", :unique => true

  create_table "cr_keywords", :id => false, :force => true do |t|
    t.integer "keyword_id",                  :null => false
    t.integer "parent_id"
    t.string  "heading",      :limit => 600, :null => false
    t.text    "description"
    t.boolean "has_children"
    t.string  "tree_sortkey", :limit => nil
  end

  add_index "cr_keywords", ["parent_id"], :name => "cr_keywords_parent_id_idx"

  create_table "cr_locales", :id => false, :force => true do |t|
    t.string "locale",        :limit => 4,   :null => false
    t.string "label",         :limit => 200, :null => false
    t.string "nls_language",  :limit => 30,  :null => false
    t.string "nls_territory", :limit => 30
    t.string "nls_charset",   :limit => 30
  end

  add_index "cr_locales", ["label"], :name => "cr_locale_name_unq", :unique => true

  create_table "cr_mime_types", :id => false, :force => true do |t|
    t.string "label",          :limit => 200
    t.string "mime_type",      :limit => 200, :null => false
    t.string "file_extension", :limit => 200
  end

  create_table "cr_news", :id => false, :force => true do |t|
    t.integer  "news_id",                       :null => false
    t.integer  "package_id",                    :null => false
    t.datetime "archive_date"
    t.integer  "approval_user"
    t.datetime "approval_date"
    t.string   "approval_ip",   :limit => 50
    t.string   "lead",          :limit => 4000
  end

  add_index "cr_news", ["approval_user"], :name => "cr_news_appuser_id_fk"

  create_table "cr_release_periods", :id => false, :force => true do |t|
    t.integer  "item_id",    :null => false
    t.datetime "start_when"
    t.datetime "end_when"
  end

  create_table "cr_revision_attributes", :id => false, :force => true do |t|
    t.integer "revision_id", :null => false
    t.text    "attributes"
  end

  create_table "cr_revisions", :id => false, :force => true do |t|
    t.integer  "revision_id",                                              :null => false
    t.integer  "item_id",                                                  :null => false
    t.string   "title",          :limit => 1000
    t.text     "description"
    t.datetime "publish_date"
    t.string   "mime_type",      :limit => 200,  :default => "text/plain"
    t.string   "nls_language",   :limit => 50
    t.integer  "lob"
    t.text     "content"
    t.integer  "content_length"
  end

  add_index "cr_revisions", ["item_id"], :name => "cr_revisions_item_id_idx"
  add_index "cr_revisions", ["lob"], :name => "cr_revisions_lob_idx"
  add_index "cr_revisions", ["mime_type"], :name => "cr_revisions_by_mime_type"
  add_index "cr_revisions", ["publish_date"], :name => "cr_revisions_publish_date_idx"
  add_index "cr_revisions", ["title"], :name => "cr_revisions_title_idx"

  create_table "cr_scheduled_release_job", :id => false, :force => true do |t|
    t.integer  "job_id"
    t.datetime "last_exec"
  end

  create_table "cr_scheduled_release_log", :id => false, :force => true do |t|
    t.datetime "exec_date",                     :null => false
    t.integer  "items_released",                :null => false
    t.integer  "items_expired",                 :null => false
    t.integer  "err_num"
    t.string   "err_msg",        :limit => 500
  end

  create_table "cr_symlinks", :id => false, :force => true do |t|
    t.integer "symlink_id",                 :null => false
    t.integer "target_id",                  :null => false
    t.string  "label",      :limit => 1000
  end

  add_index "cr_symlinks", ["target_id"], :name => "cr_symlinks_by_target_id"

  create_table "cr_template_use_contexts", :id => false, :force => true do |t|
    t.string "use_context", :limit => 100, :null => false
  end

  create_table "cr_templates", :id => false, :force => true do |t|
    t.integer "template_id", :null => false
  end

  create_table "cr_text", :id => false, :force => true do |t|
    t.text "text_data"
  end

  create_table "cr_type_children", :id => false, :force => true do |t|
    t.string  "parent_type",  :limit => 100, :null => false
    t.string  "child_type",   :limit => 100, :null => false
    t.string  "relation_tag", :limit => 100, :null => false
    t.integer "min_n"
    t.integer "max_n"
  end

  add_index "cr_type_children", ["child_type"], :name => "cr_type_children_chld_type_idx"

  create_table "cr_type_relations", :id => false, :force => true do |t|
    t.string  "content_type", :limit => 100, :null => false
    t.string  "target_type",  :limit => 100, :null => false
    t.string  "relation_tag", :limit => 100, :null => false
    t.integer "min_n"
    t.integer "max_n"
  end

  add_index "cr_type_relations", ["target_type"], :name => "cr_type_relations_tgt_typ_idx"

  create_table "cr_type_template_map", :id => false, :force => true do |t|
    t.string  "content_type", :limit => 100,                    :null => false
    t.integer "template_id",                                    :null => false
    t.string  "use_context",  :limit => 100,                    :null => false
    t.boolean "is_default",                  :default => false
  end

  add_index "cr_type_template_map", ["content_type"], :name => "cr_ttmap_by_content_type"
  add_index "cr_type_template_map", ["template_id"], :name => "cr_ttmap_by_template_id"
  add_index "cr_type_template_map", ["use_context"], :name => "cr_ttmap_by_use_context"

  create_table "cr_xml_docs", :id => false, :force => true do |t|
    t.integer "doc_id", :null => false
    t.text    "doc"
  end

  create_table "dav_site_node_folder_map", :id => false, :force => true do |t|
    t.integer "node_id"
    t.integer "folder_id"
    t.boolean "enabled_p"
  end

  add_index "dav_site_node_folder_map", ["node_id"], :name => "dav_site_node_folder_map_node_id_un", :unique => true

  create_table "download_archive_descs", :id => false, :force => true do |t|
    t.integer "archive_desc_id", :null => false
  end

  create_table "download_archive_metadata", :id => false, :force => true do |t|
    t.integer "metadata_id",                    :null => false
    t.integer "repository_id"
    t.integer "archive_type_id"
    t.integer "sort_key",                       :null => false
    t.string  "pretty_name",     :limit => 100, :null => false
    t.string  "data_type",       :limit => 30
    t.boolean "required_p"
    t.boolean "linked_p"
    t.boolean "mainpage_p"
    t.boolean "computed_p"
  end

  create_table "download_archive_revisions", :id => false, :force => true do |t|
    t.integer  "revision_id",      :null => false
    t.boolean  "approved_p"
    t.datetime "approved_date"
    t.integer  "approved_user"
    t.text     "approved_comment"
    t.integer  "file_size",        :null => false
  end

  create_table "download_archive_types", :id => false, :force => true do |t|
    t.integer "archive_type_id",                :null => false
    t.integer "repository_id"
    t.string  "pretty_name",     :limit => 100, :null => false
    t.string  "description",     :limit => 500, :null => false
  end

  create_table "download_archives", :id => false, :force => true do |t|
    t.integer "archive_id",      :null => false
    t.integer "archive_type_id"
    t.integer "archive_desc_id"
  end

  create_table "download_downloads", :id => false, :force => true do |t|
    t.integer  "download_id",                      :null => false
    t.integer  "user_id"
    t.integer  "revision_id"
    t.datetime "download_date",                    :null => false
    t.string   "download_hostname", :limit => 400
    t.string   "download_ip",       :limit => 20
    t.string   "user_agent",        :limit => 200
    t.integer  "reason_id"
    t.text     "reason"
  end

  create_table "download_metadata_choices", :id => false, :force => true do |t|
    t.integer "choice_id",                    :null => false
    t.integer "metadata_id",                  :null => false
    t.string  "label",         :limit => 500, :null => false
    t.decimal "numeric_value"
    t.integer "sort_order"
  end

  create_table "download_reasons", :id => false, :force => true do |t|
    t.integer "download_reason_id",                :null => false
    t.integer "repository_id"
    t.string  "reason",             :limit => 500, :null => false
  end

  create_table "download_repository", :id => false, :force => true do |t|
    t.integer "repository_id", :null => false
  end

  create_table "download_revision_data", :id => false, :force => true do |t|
    t.integer  "revision_id"
    t.integer  "metadata_id"
    t.integer  "choice_id"
    t.boolean  "boolean_answer"
    t.text     "clob_answer"
    t.decimal  "number_answer"
    t.text     "varchar_answer"
    t.datetime "date_answer"
  end

  create_table "etp_page_revisions", :id => false, :force => true do |t|
    t.integer "etp_page_revision_id", :null => false
  end

  create_table "forums_forums", :id => false, :force => true do |t|
    t.integer  "forum_id",                                               :null => false
    t.string   "name",                  :limit => 200,                   :null => false
    t.string   "charter",               :limit => 2000
    t.string   "presentation_type",     :limit => 100,                   :null => false
    t.string   "posting_policy",        :limit => 100,                   :null => false
    t.string   "max_child_sortkey",     :limit => nil
    t.string   "enabled_p",             :limit => 1,    :default => "t", :null => false
    t.integer  "package_id",                                             :null => false
    t.datetime "last_post"
    t.integer  "thread_count",                          :default => 0
    t.integer  "approved_thread_count",                 :default => 0
  end

  add_index "forums_forums", ["package_id", "enabled_p"], :name => "forums_forums_pkg_enable_idx"

  create_table "forums_messages", :id => false, :force => true do |t|
    t.integer  "message_id",                                                    :null => false
    t.integer  "forum_id"
    t.string   "subject",              :limit => 200
    t.text     "content"
    t.integer  "user_id",                                                       :null => false
    t.datetime "posting_date",                                                  :null => false
    t.string   "state",                :limit => 100
    t.integer  "parent_id"
    t.string   "open_p",               :limit => 1,   :default => "t",          :null => false
    t.string   "tree_sortkey",         :limit => nil
    t.string   "max_child_sortkey",    :limit => nil
    t.datetime "last_child_post"
    t.string   "format",               :limit => 30,  :default => "text/plain"
    t.integer  "reply_count",                         :default => 0
    t.integer  "approved_reply_count",                :default => 0
    t.integer  "last_poster"
  end

  add_index "forums_messages", ["forum_id", "tree_sortkey"], :name => "forums_mess_forum_sk_un", :unique => true
  add_index "forums_messages", ["parent_id"], :name => "forums_messages_parent_id_idx"
  add_index "forums_messages", ["tree_sortkey", "forum_id"], :name => "forums_mess_sk_forum_un", :unique => true
  add_index "forums_messages", ["user_id"], :name => "forums_messages_user_id_idx"

  create_table "fs_root_folders", :id => false, :force => true do |t|
    t.integer "package_id", :null => false
    t.integer "folder_id"
  end

  add_index "fs_root_folders", ["folder_id"], :name => "fs_root_folder_folder_id_un", :unique => true

  create_table "fs_rss_subscrs", :id => false, :force => true do |t|
    t.integer "subscr_id",                                                  :null => false
    t.integer "folder_id",                                                  :null => false
    t.string  "short_name",               :limit => 80,                     :null => false
    t.string  "feed_title",               :limit => 200,                    :null => false
    t.integer "max_items",                               :default => 15,    :null => false
    t.boolean "descend_p",                               :default => true,  :null => false
    t.boolean "include_revisions_p",                     :default => false, :null => false
    t.string  "enclosure_match_patterns", :limit => 200
  end

  create_table "general_comments", :id => false, :force => true do |t|
    t.integer "comment_id",                 :null => false
    t.integer "object_id"
    t.string  "category",   :limit => 1000
  end

  add_index "general_comments", ["object_id"], :name => "general_comments_object_id_idx"

  create_table "general_objects", :id => false, :force => true do |t|
    t.integer "object_id",                    :null => false
    t.string  "on_which_table", :limit => 30, :null => false
    t.integer "on_what_id",                   :null => false
  end

  add_index "general_objects", ["on_which_table", "on_what_id"], :name => "general_objects_un", :unique => true

  create_table "get_path_abs_cursor", :id => false, :force => true do |t|
    t.integer "sid",        :null => false
    t.integer "pos",        :null => false
    t.text    "name"
    t.integer "parent_id"
    t.integer "tree_level"
  end

  create_table "get_path_cursors", :id => false, :force => true do |t|
    t.integer "rel_cursor_pos"
    t.integer "abs_cursor_pos"
  end

  create_table "get_path_rel_cursor", :id => false, :force => true do |t|
    t.integer "sid",        :null => false
    t.integer "pos",        :null => false
    t.integer "parent_id"
    t.integer "tree_level"
  end

  create_table "group_element_index", :id => false, :force => true do |t|
    t.integer "group_id",                         :null => false
    t.integer "element_id",                       :null => false
    t.integer "rel_id",                           :null => false
    t.integer "container_id",                     :null => false
    t.string  "rel_type",          :limit => 100, :null => false
    t.string  "ancestor_rel_type", :limit => 100, :null => false
  end

  add_index "group_element_index", ["element_id"], :name => "group_elem_idx_element_idx"
  add_index "group_element_index", ["group_id"], :name => "group_elem_idx_group_idx"
  add_index "group_element_index", ["rel_id"], :name => "group_elem_idx_rel_id_idx"
  add_index "group_element_index", ["rel_type"], :name => "group_elem_idx_rel_type_idx"

  create_table "group_rels", :id => false, :force => true do |t|
    t.integer "group_rel_id",                :null => false
    t.string  "rel_type",     :limit => 100, :null => false
    t.integer "group_id",                    :null => false
  end

  add_index "group_rels", ["group_id", "rel_type"], :name => "group_rels_group_rel_type_un", :unique => true
  add_index "group_rels", ["rel_type"], :name => "group_rels_rel_type_idx"

  create_table "group_type_rels", :id => false, :force => true do |t|
    t.integer "group_rel_type_id",                :null => false
    t.string  "rel_type",          :limit => 100, :null => false
    t.string  "group_type",        :limit => 100, :null => false
  end

  add_index "group_type_rels", ["group_type", "rel_type"], :name => "gtr_group_rel_types_un", :unique => true
  add_index "group_type_rels", ["rel_type"], :name => "group_type_rels_rel_type_idx"

  create_table "group_types", :id => false, :force => true do |t|
    t.string "group_type",          :limit => 100,                     :null => false
    t.string "default_join_policy", :limit => 30,  :default => "open", :null => false
  end

  create_table "groups", :id => false, :force => true do |t|
    t.integer "group_id",                                       :null => false
    t.string  "group_name",  :limit => 100,                     :null => false
    t.string  "join_policy", :limit => 30,  :default => "open", :null => false
  end

  create_table "guard_list", :id => false, :force => true do |t|
    t.integer "session_id",                :null => false
    t.integer "rcnt",                      :null => false
    t.string  "ky",         :limit => 100
  end

  create_table "host_node_map", :id => false, :force => true do |t|
    t.string  "host",    :limit => 200
    t.integer "node_id",                :null => false
  end

  create_table "images", :id => false, :force => true do |t|
    t.integer "image_id", :null => false
    t.integer "width"
    t.integer "height"
  end

  create_table "journal_entries", :id => false, :force => true do |t|
    t.integer "journal_id",                   :null => false
    t.integer "object_id"
    t.string  "action",        :limit => 100
    t.text    "action_pretty"
    t.text    "msg"
  end

  add_index "journal_entries", ["object_id"], :name => "journal_entries_object_idx"

  create_table "lang_message_keys", :id => false, :force => true do |t|
    t.string "message_key", :limit => 200, :null => false
    t.string "package_key", :limit => 100, :null => false
    t.text   "description"
  end

  create_table "lang_messages", :id => false, :force => true do |t|
    t.string   "message_key",    :limit => 200,                    :null => false
    t.string   "package_key",    :limit => 100,                    :null => false
    t.string   "locale",         :limit => 30,                     :null => false
    t.text     "message"
    t.string   "upgrade_status", :limit => 30
    t.datetime "creation_date",                                    :null => false
    t.integer  "creation_user"
    t.boolean  "deleted_p",                     :default => false
    t.datetime "sync_time"
    t.boolean  "conflict_p",                    :default => false
  end

  create_table "lang_messages_audit", :id => false, :force => true do |t|
    t.string   "message_key",    :limit => 200,                    :null => false
    t.string   "package_key",    :limit => 100,                    :null => false
    t.string   "locale",         :limit => 30,                     :null => false
    t.text     "old_message"
    t.text     "comment_text"
    t.datetime "overwrite_date",                                   :null => false
    t.integer  "overwrite_user"
    t.boolean  "deleted_p",                     :default => false
    t.datetime "sync_time"
    t.boolean  "conflict_p",                    :default => false
    t.string   "upgrade_status", :limit => 30
    t.integer  "audit_id",                                         :null => false
  end

  create_table "lang_messages_tmp", :id => false, :force => true do |t|
    t.string "message_key",    :limit => 200
    t.string "package_key",    :limit => 100
    t.string "locale",         :limit => 30
    t.text   "message"
    t.string "upgrade_status", :limit => 30
  end

  create_table "lang_translate_columns", :id => false, :force => true do |t|
    t.integer "column_id",                    :null => false
    t.string  "on_which_table", :limit => 50
    t.string  "on_what_column", :limit => 50
    t.boolean "required_p"
    t.boolean "short_p"
  end

  add_index "lang_translate_columns", ["on_which_table", "on_what_column"], :name => "ltc_u", :unique => true

  create_table "lang_translation_registry", :id => false, :force => true do |t|
    t.string  "on_which_table", :limit => 50, :null => false
    t.integer "on_what_id",                   :null => false
    t.string  "locale",         :limit => 30, :null => false
  end

  create_table "lob_data", :id => false, :force => true do |t|
    t.integer "lob_id",   :null => false
    t.integer "segment",  :null => false
    t.integer "byte_len", :null => false
    t.binary  "data",     :null => false
  end

  add_index "lob_data", ["lob_id"], :name => "lob_data_index"

  create_table "lobs", :id => false, :force => true do |t|
    t.integer "lob_id",                  :null => false
    t.integer "refcount", :default => 0, :null => false
  end

  create_table "logger_entries", :id => false, :force => true do |t|
    t.integer  "entry_id",                    :null => false
    t.integer  "project_id"
    t.integer  "variable_id"
    t.float    "value",                       :null => false
    t.datetime "time_stamp",                  :null => false
    t.string   "description", :limit => 4000
  end

  create_table "logger_project_pkg_map", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "package_id"
  end

  add_index "logger_project_pkg_map", ["project_id", "package_id"], :name => "logger_project_pkg_map_un", :unique => true

  create_table "logger_project_var_map", :id => false, :force => true do |t|
    t.integer "project_id",  :null => false
    t.integer "variable_id", :null => false
    t.boolean "primary_p",   :null => false
  end

  add_index "logger_project_var_map", ["project_id", "variable_id"], :name => "logger_project_var_map_un", :unique => true

  create_table "logger_projections", :id => false, :force => true do |t|
    t.integer  "projection_id",                 :null => false
    t.string   "name",          :limit => 1000
    t.string   "description",   :limit => 4000
    t.integer  "project_id",                    :null => false
    t.integer  "variable_id",                   :null => false
    t.datetime "start_time",                    :null => false
    t.datetime "end_time",                      :null => false
    t.decimal  "value",                         :null => false
  end

  create_table "logger_projects", :id => false, :force => true do |t|
    t.integer "project_id",                                     :null => false
    t.string  "name",         :limit => 1000
    t.string  "description",  :limit => 4000
    t.boolean "active_p",                     :default => true, :null => false
    t.integer "project_lead",                                   :null => false
  end

  create_table "logger_variables", :id => false, :force => true do |t|
    t.integer "variable_id",                                        :null => false
    t.string  "name",        :limit => 200
    t.string  "unit",        :limit => 200
    t.string  "type",        :limit => 50,  :default => "additive", :null => false
    t.integer "package_id"
  end

  create_table "membership_rels", :id => false, :force => true do |t|
    t.integer "rel_id",                     :null => false
    t.string  "member_state", :limit => 20
  end

  create_table "na_aggregators", :id => false, :force => true do |t|
    t.integer "aggregator_id",                                      :null => false
    t.string  "aggregator_name",   :limit => 100,                   :null => false
    t.text    "description"
    t.integer "package_id",                                         :null => false
    t.integer "maintainer_id",                                      :null => false
    t.boolean "public_p",                         :default => true
    t.integer "number_shown",                     :default => 100
    t.integer "aggregator_bottom"
  end

  add_index "na_aggregators", ["package_id"], :name => "na_aggregators_package_id_idx"

  create_table "na_items", :primary_key => "item_id", :force => true do |t|
    t.integer  "source_id",                                        :null => false
    t.string   "link",            :limit => 500
    t.string   "guid",            :limit => 500
    t.string   "original_guid",   :limit => 500
    t.boolean  "permalink_p",                    :default => true
    t.string   "title",           :limit => 500
    t.string   "author",          :limit => 100
    t.string   "comment_page",    :limit => 200
    t.text     "description"
    t.text     "content_encoded"
    t.datetime "creation_date"
    t.datetime "pub_date"
  end

  add_index "na_items", ["guid"], :name => "na_items_guid_idx"
  add_index "na_items", ["source_id"], :name => "na_items_source_id_idx"

  create_table "na_presubscribed_feeds", :id => false, :force => true do |t|
    t.integer "source_id",  :null => false
    t.integer "package_id", :null => false
  end

  create_table "na_purges", :id => false, :force => true do |t|
    t.integer  "purge_id",      :null => false
    t.integer  "top",           :null => false
    t.integer  "bottom",        :null => false
    t.integer  "aggregator_id", :null => false
    t.datetime "purge_date"
  end

  add_index "na_purges", ["aggregator_id"], :name => "na_purges_aggregator_id_idx"

  create_table "na_saved_items", :id => false, :force => true do |t|
    t.integer "item_id",       :null => false
    t.integer "aggregator_id", :null => false
  end

  add_index "na_saved_items", ["aggregator_id"], :name => "na_saved_items_aggregator_id_idx"

  create_table "na_sources", :id => false, :force => true do |t|
    t.integer  "source_id",                                            :null => false
    t.string   "feed_url",            :limit => 500,                   :null => false
    t.string   "link",                :limit => 500
    t.string   "title",               :limit => 500
    t.string   "description",         :limit => 500
    t.integer  "updates",                            :default => 0
    t.datetime "last_scanned"
    t.string   "last_modified",       :limit => 100
    t.datetime "last_modified_stamp"
    t.boolean  "last_scan_ok_p",                     :default => true
    t.text     "stacktrace"
    t.text     "rss_source"
    t.boolean  "listed_p",                           :default => true
  end

  create_table "na_subscriptions", :id => false, :force => true do |t|
    t.integer  "aggregator_id",                                       :null => false
    t.integer  "source_id",                                           :null => false
    t.string   "source_title",       :limit => 100
    t.boolean  "show_description_p",                :default => true, :null => false
    t.datetime "creation_date"
  end

  add_index "na_subscriptions", ["aggregator_id"], :name => "na_subscriptions_aid_idx"

  create_table "na_user_preferences", :id => false, :force => true do |t|
    t.integer "user_id",            :null => false
    t.integer "default_aggregator"
    t.integer "package_id",         :null => false
  end

  create_table "na_weblogs", :id => false, :force => true do |t|
    t.integer "weblog_id",                  :null => false
    t.integer "package_id",                 :null => false
    t.integer "user_id",                    :null => false
    t.string  "weblog_name", :limit => 100, :null => false
    t.string  "blog_type",   :limit => 100, :null => false
    t.string  "base_url",    :limit => 500, :null => false
    t.string  "server",      :limit => 500
    t.integer "port"
    t.string  "path",        :limit => 100
    t.integer "blogid"
    t.string  "username",    :limit => 200
    t.string  "password",    :limit => 200
  end

  create_table "notification_delivery_methods", :id => false, :force => true do |t|
    t.integer "delivery_method_id",                :null => false
    t.integer "sc_impl_id",                        :null => false
    t.string  "short_name",         :limit => 100, :null => false
    t.string  "pretty_name",        :limit => 200, :null => false
  end

  add_index "notification_delivery_methods", ["short_name"], :name => "notif_deliv_short_name_un", :unique => true

  create_table "notification_email_hold", :id => false, :force => true do |t|
    t.integer "reply_id", :null => false
    t.text    "to_addr"
    t.text    "headers"
    t.text    "body"
  end

  create_table "notification_intervals", :id => false, :force => true do |t|
    t.integer "interval_id",                :null => false
    t.string  "name",        :limit => 200, :null => false
    t.integer "n_seconds",                  :null => false
  end

  add_index "notification_intervals", ["name"], :name => "notif_interv_name_un", :unique => true

  create_table "notification_replies", :id => false, :force => true do |t|
    t.integer  "reply_id",                  :null => false
    t.integer  "object_id",                 :null => false
    t.integer  "type_id",                   :null => false
    t.integer  "from_user",                 :null => false
    t.string   "subject",    :limit => 100
    t.text     "content"
    t.datetime "reply_date"
  end

  add_index "notification_replies", ["from_user"], :name => "notif_repl_from_user_idx"
  add_index "notification_replies", ["object_id"], :name => "notif_repl_object_id_idx"
  add_index "notification_replies", ["type_id"], :name => "notif_repl_type_id_idx"

  create_table "notification_requests", :id => false, :force => true do |t|
    t.integer "request_id",                                            :null => false
    t.integer "type_id"
    t.integer "user_id"
    t.integer "object_id"
    t.integer "interval_id",                                           :null => false
    t.integer "delivery_method_id",                                    :null => false
    t.string  "format",             :limit => 100, :default => "text"
    t.boolean "dynamic_p",                         :default => false
  end

  add_index "notification_requests", ["type_id", "object_id"], :name => "notification_requests_t_o_idx"

  create_table "notification_types", :id => false, :force => true do |t|
    t.integer "type_id",                     :null => false
    t.integer "sc_impl_id",                  :null => false
    t.string  "short_name",  :limit => 100,  :null => false
    t.string  "pretty_name", :limit => 200,  :null => false
    t.string  "description", :limit => 2000
  end

  add_index "notification_types", ["short_name"], :name => "notif_type_short_name_un", :unique => true

  create_table "notification_types_del_methods", :id => false, :force => true do |t|
    t.integer "type_id",            :null => false
    t.integer "delivery_method_id", :null => false
  end

  create_table "notification_types_intervals", :id => false, :force => true do |t|
    t.integer "type_id",     :null => false
    t.integer "interval_id", :null => false
  end

  create_table "notification_user_map", :id => false, :force => true do |t|
    t.integer  "notification_id", :null => false
    t.integer  "user_id",         :null => false
    t.datetime "sent_date"
  end

  add_index "notification_user_map", ["user_id"], :name => "notification_user_map_user_idx"

  create_table "notifications", :id => false, :force => true do |t|
    t.integer  "notification_id",                 :null => false
    t.integer  "type_id"
    t.integer  "object_id"
    t.datetime "notif_date",                      :null => false
    t.integer  "response_id"
    t.string   "notif_subject",   :limit => 1000
    t.text     "notif_text"
    t.text     "notif_html"
    t.integer  "notif_user"
  end

  add_index "notifications", ["object_id"], :name => "notifications_object_id_idx"
  add_index "notifications", ["response_id"], :name => "notifications_response_id_idx"
  add_index "notifications", ["type_id"], :name => "notifications_type_id_idx"

  create_table "pages", :id => false, :force => true do |t|
    t.integer "package_id", :null => false
    t.text    "content",    :null => false
  end

  create_table "parties", :id => false, :force => true do |t|
    t.integer "party_id",                :null => false
    t.string  "email",    :limit => 100
    t.string  "url",      :limit => 200
  end

  add_index "parties", ["email"], :name => "parties_email_un", :unique => true
  add_index "parties", ["email"], :name => "parties_email_lower_idx", :functional => "lower(email)"

  create_table "party_approved_member_map", :id => false, :force => true do |t|
    t.integer "party_id",  :null => false
    t.integer "member_id", :null => false
    t.integer "tag",       :null => false
  end

  add_index "party_approved_member_map", ["member_id"], :name => "party_member_member_idx"

  create_table "persons", :id => false, :force => true do |t|
    t.integer "person_id",                  :null => false
    t.string  "first_names", :limit => 100, :null => false
    t.string  "last_name",   :limit => 100, :null => false
  end

  create_table "pinds_blog_categories", :id => false, :force => true do |t|
    t.integer "category_id",                 :null => false
    t.integer "package_id"
    t.string  "name",        :limit => 4000, :null => false
    t.string  "short_name",  :limit => 4000, :null => false
  end

  create_table "pinds_blog_entries", :id => false, :force => true do |t|
    t.integer  "entry_id",                                                 :null => false
    t.integer  "package_id"
    t.string   "title",          :limit => 500
    t.string   "title_url",      :limit => 500
    t.integer  "category_id"
    t.string   "content",        :limit => 32000
    t.string   "content_format", :limit => 50,    :default => "text/html", :null => false
    t.datetime "entry_date"
    t.string   "draft_p",        :limit => 1,     :default => "f"
    t.string   "deleted_p",      :limit => 1,     :default => "f"
  end

  add_index "pinds_blog_entries", ["package_id", "entry_date"], :name => "pinds_blog_entry_pck_entr_idx"

  create_table "previous_place_list", :id => false, :force => true do |t|
    t.integer "session_id",                :null => false
    t.integer "rcnt",                      :null => false
    t.string  "ky",         :limit => 100
  end

  create_table "rc_segment_required_seg_map", :id => false, :force => true do |t|
    t.integer "rel_segment",                       :null => false
    t.string  "rel_side",             :limit => 3, :null => false
    t.integer "required_rel_segment",              :null => false
  end

  add_index "rc_segment_required_seg_map", ["rel_segment", "rel_side", "required_rel_segment"], :name => "rc_segment_required_seg_map_uq", :unique => true
  add_index "rc_segment_required_seg_map", ["required_rel_segment"], :name => "rc_segment_required_seg_idx"

  create_table "recurrence_interval_types", :id => false, :force => true do |t|
    t.integer "interval_type",               :null => false
    t.string  "interval_name", :limit => 50, :null => false
  end

  add_index "recurrence_interval_types", ["interval_name"], :name => "rit_interval_name_un", :unique => true

  create_table "recurrences", :id => false, :force => true do |t|
    t.integer  "recurrence_id",                    :null => false
    t.integer  "interval_type",                    :null => false
    t.integer  "every_nth_interval"
    t.string   "days_of_week",       :limit => 20
    t.datetime "recur_until"
    t.datetime "db_populated_until"
    t.string   "custom_func"
  end

  add_index "recurrences", ["interval_type"], :name => "recurrences_interval_type_idx"

  create_table "rel_constraints", :id => false, :force => true do |t|
    t.integer "constraint_id",                                          :null => false
    t.string  "constraint_name",      :limit => 100,                    :null => false
    t.integer "rel_segment",                                            :null => false
    t.string  "rel_side",             :limit => 3,   :default => "two", :null => false
    t.integer "required_rel_segment",                                   :null => false
  end

  add_index "rel_constraints", ["rel_segment", "rel_side", "required_rel_segment"], :name => "rel_constraints_uq", :unique => true
  add_index "rel_constraints", ["required_rel_segment"], :name => "rel_constraint_req_rel_seg_idx"

  create_table "rel_segments", :id => false, :force => true do |t|
    t.integer "segment_id",                  :null => false
    t.string  "segment_name", :limit => 230, :null => false
    t.integer "group_id",                    :null => false
    t.string  "rel_type",     :limit => 100, :null => false
  end

  add_index "rel_segments", ["group_id", "rel_type"], :name => "rel_segments_grp_rel_type_uq", :unique => true
  add_index "rel_segments", ["rel_type"], :name => "rel_segments_rel_type_idx"

  create_table "rl_resource_category", :id => false, :force => true do |t|
    t.integer "category_id",                   :null => false
    t.integer "category_type"
    t.string  "short_name",    :limit => 100
    t.string  "description",   :limit => 1000
  end

  create_table "rl_resource_category_map", :id => false, :force => true do |t|
    t.integer "resource_item_id", :null => false
    t.integer "category_id",      :null => false
  end

  create_table "rl_resource_category_type", :id => false, :force => true do |t|
    t.integer "category_id",                 :null => false
    t.string  "short_name",  :limit => 100
    t.string  "description", :limit => 1000
    t.integer "ordering"
  end

  create_table "rl_resources", :id => false, :force => true do |t|
    t.integer "resource_item_id",              :null => false
    t.integer "resource_number"
    t.string  "approved_p",       :limit => 1
  end

  create_table "rl_resources_revisions", :id => false, :force => true do |t|
    t.integer "resource_revision_id", :null => false
  end

  create_table "rss_gen_subscrs", :id => false, :force => true do |t|
    t.integer  "subscr_id",                          :null => false
    t.integer  "impl_id",                            :null => false
    t.string   "summary_context_id", :limit => 100,  :null => false
    t.integer  "timeout",                            :null => false
    t.datetime "lastbuild"
    t.integer  "last_ttb"
    t.string   "channel_title",      :limit => 200
    t.string   "channel_link",       :limit => 1000
  end

  add_index "rss_gen_subscrs", ["impl_id", "summary_context_id"], :name => "rss_gen_subscrs_impl_con_un", :unique => true

  create_table "search_observer_queue", :id => false, :force => true do |t|
    t.integer  "object_id"
    t.datetime "event_date"
    t.string   "event",      :limit => 6
  end

  create_table "sec_session_properties", :id => false, :force => true do |t|
    t.integer "session_id",                   :null => false
    t.string  "module",         :limit => 50, :null => false
    t.string  "property_name",  :limit => 50, :null => false
    t.text    "property_value"
    t.boolean "secure_p"
    t.integer "last_hit",                     :null => false
  end

  add_index "sec_session_properties", ["property_name"], :name => "sec_property_names"

  create_table "secret_tokens", :id => false, :force => true do |t|
    t.integer  "token_id",                      :null => false
    t.string   "token",           :limit => 40
    t.datetime "token_timestamp"
  end

  create_table "site_node_object_mappings", :id => false, :force => true do |t|
    t.integer "object_id", :null => false
    t.integer "node_id",   :null => false
  end

  create_table "site_nodes", :id => false, :force => true do |t|
    t.integer "node_id",                                        :null => false
    t.integer "parent_id"
    t.string  "name",         :limit => 100
    t.boolean "directory_p",                                    :null => false
    t.boolean "pattern_p",                   :default => false, :null => false
    t.integer "object_id"
    t.string  "tree_sortkey", :limit => nil
  end

  add_index "site_nodes", ["object_id"], :name => "site_nodes_object_id_idx"
  add_index "site_nodes", ["parent_id", "name"], :name => "site_nodes_un", :unique => true
  add_index "site_nodes", ["parent_id", "object_id", "node_id"], :name => "site_nodes_parent_id_idx"
  add_index "site_nodes", ["tree_sortkey"], :name => "site_nodes_tree_skey_idx"

  create_table "site_nodes_selection", :id => false, :force => true do |t|
    t.integer "node_id", :null => false
    t.boolean "view_p"
  end

  create_table "subsite_callbacks", :id => false, :force => true do |t|
    t.integer "callback_id",                                 :null => false
    t.string  "event_type",    :limit => 100,                :null => false
    t.string  "object_type",   :limit => 100,                :null => false
    t.string  "callback",      :limit => 300,                :null => false
    t.string  "callback_type", :limit => 100,                :null => false
    t.integer "sort_order",                   :default => 1, :null => false
  end

  add_index "subsite_callbacks", ["object_type", "event_type", "callback_type", "callback"], :name => "subsite_callbacks_un", :unique => true

  create_table "syndication", :id => false, :force => true do |t|
    t.integer  "object_id",    :null => false
    t.datetime "last_updated", :null => false
    t.text     "rss_xml_frag"
    t.text     "body"
    t.text     "url"
  end

  create_table "target_place_list", :id => false, :force => true do |t|
    t.integer "session_id",                :null => false
    t.integer "rcnt",                      :null => false
    t.string  "ky",         :limit => 100
  end

  create_table "time_intervals", :id => false, :force => true do |t|
    t.integer  "interval_id", :null => false
    t.datetime "start_date"
    t.datetime "end_date"
  end

  add_index "time_intervals", ["start_date"], :name => "time_intervals_start_idx"

  create_table "timespans", :id => false, :force => true do |t|
    t.integer "timespan_id", :null => false
    t.integer "interval_id"
  end

  add_index "timespans", ["interval_id"], :name => "timespans_interval_id_idx"
  add_index "timespans", ["timespan_id"], :name => "timespans_idx"

  create_table "timezone_rules", :id => false, :force => true do |t|
    t.integer  "tz_id"
    t.string   "abbrev",      :limit => 10, :null => false
    t.datetime "utc_start",                 :null => false
    t.datetime "utc_end",                   :null => false
    t.datetime "local_start",               :null => false
    t.datetime "local_end",                 :null => false
    t.text     "gmt_offset",                :null => false
    t.boolean  "isdst_p"
  end

  add_index "timezone_rules", ["tz_id", "local_start", "local_end"], :name => "timezone_rules_idx2"
  add_index "timezone_rules", ["tz_id", "utc_start", "utc_end"], :name => "timezone_rules_idx1"

  create_table "timezones", :id => false, :force => true do |t|
    t.integer "tz_id",                     :null => false
    t.string  "tz",         :limit => 100, :null => false
    t.text    "gmt_offset",                :null => false
  end

  create_table "trackback_pings", :id => false, :force => true do |t|
    t.string  "tb_url",     :limit => 1000
    t.string  "name",       :limit => 1000
    t.integer "comment_id"
  end

  add_index "trackback_pings", ["comment_id"], :name => "tbp_comment_id_fk_idx"

  create_table "ttl_area_assignments", :id => false, :force => true do |t|
    t.integer  "area_id",       :null => false
    t.integer  "user_id",       :null => false
    t.datetime "date_assigned"
  end

  create_table "ttl_areas", :id => false, :force => true do |t|
    t.integer "area_id",                                   :null => false
    t.boolean "active_p",                :default => true
    t.string  "name",     :limit => 200,                   :null => false
  end

  create_table "ttl_assignments", :id => false, :force => true do |t|
    t.integer  "ticket_id",     :null => false
    t.integer  "user_id",       :null => false
    t.datetime "date_assigned"
  end

  create_table "ttl_comments", :id => false, :force => true do |t|
    t.integer  "comment_id",                                            :null => false
    t.boolean  "active_p",                     :default => true
    t.integer  "ticket_id",                                             :null => false
    t.integer  "creation_user",                                         :null => false
    t.datetime "creation_date"
    t.text     "message"
    t.string   "message_format", :limit => 10, :default => "formatted"
  end

  create_table "ttl_prefs", :id => false, :force => true do |t|
    t.integer "user_id",                :null => false
    t.string  "sort",    :limit => 100
    t.boolean "mine_p"
    t.string  "status",  :limit => 100
    t.integer "area_id"
  end

  create_table "ttl_status", :id => false, :force => true do |t|
    t.string  "status",      :limit => 20,  :null => false
    t.string  "status_name", :limit => 100, :null => false
    t.integer "sort_key"
  end

  create_table "ttl_tickets", :id => false, :force => true do |t|
    t.integer  "ticket_id",                                              :null => false
    t.boolean  "active_p",                      :default => true
    t.integer  "area_id"
    t.string   "name",           :limit => 200,                          :null => false
    t.string   "type",           :limit => 20
    t.string   "status",         :limit => 20
    t.string   "url",            :limit => 400
    t.datetime "deadline"
    t.text     "message"
    t.string   "message_format", :limit => 10,  :default => "formatted"
    t.integer  "priority",                      :default => 2
  end

  create_table "user_portraits", :id => false, :force => true do |t|
    t.integer "user_id", :null => false
  end

  create_table "user_preferences", :id => false, :force => true do |t|
    t.integer "user_id",                                               :null => false
    t.boolean "prefer_text_only_p",                 :default => false
    t.string  "language_preference", :limit => 2,   :default => "en"
    t.boolean "dont_spam_me_p",                     :default => false
    t.string  "email_type",          :limit => 64
    t.string  "locale",              :limit => 30
    t.string  "timezone",            :limit => 100
  end

  create_table "users", :id => false, :force => true do |t|
    t.integer  "user_id",                                                  :null => false
    t.string   "password",              :limit => 40
    t.string   "salt",                  :limit => 40
    t.string   "screen_name",           :limit => 100
    t.integer  "priv_name",                             :default => 0,     :null => false
    t.integer  "priv_email",                            :default => 5,     :null => false
    t.boolean  "email_verified_p",                      :default => true
    t.boolean  "email_bouncing_p",                      :default => false, :null => false
    t.datetime "no_alerts_until"
    t.datetime "last_visit"
    t.datetime "second_to_last_visit"
    t.integer  "n_sessions",                            :default => 1,     :null => false
    t.string   "password_question",     :limit => 1000
    t.string   "password_answer",       :limit => 1000
    t.datetime "password_changed_date"
    t.integer  "authority_id"
    t.string   "username",              :limit => 100,                     :null => false
    t.string   "auth_token",            :limit => 100
  end

  add_index "users", ["authority_id", "username"], :name => "users_authority_username_un", :unique => true
  add_index "users", ["screen_name"], :name => "users_screen_name_un", :unique => true
  add_index "users", ["screen_name"], :name => "users_screenname_lower_idx", :functional => "lower(screen_name)"
  add_index "users", ["username"], :name => "users_username_lower_idx", :functional => "lower(username)"

  create_table "users_email_image", :id => false, :force => true do |t|
    t.integer "email_image_id", :null => false
  end

  create_table "weblogger_blogroll_entries", :id => false, :force => true do |t|
    t.integer "link_id",                                   :null => false
    t.integer "package_id"
    t.string  "name",       :limit => 500,                 :null => false
    t.string  "url",        :limit => 1000,                :null => false
    t.integer "sort_order",                 :default => 0
  end

  create_table "weblogger_channels", :id => false, :force => true do |t|
    t.integer "channel_id", :null => false
    t.integer "package_id"
    t.integer "user_id"
  end

  add_index "weblogger_channels", ["package_id", "user_id"], :name => "weblogger_chnls_package_user_un", :unique => true

  create_table "weblogger_ping_urls", :id => false, :force => true do |t|
    t.integer  "package_id",                   :null => false
    t.string   "ping_url",      :limit => 500, :null => false
    t.datetime "creation_date"
  end

  create_table "weblogger_technorati_cache", :id => false, :force => true do |t|
    t.integer  "package_id"
    t.string   "name",          :limit => 500
    t.string   "url",           :limit => 500
    t.datetime "creation_date"
  end

  create_table "wf_arcs", :id => false, :force => true do |t|
    t.string "workflow_key",      :limit => 100, :null => false
    t.string "transition_key",    :limit => 100, :null => false
    t.string "place_key",         :limit => 100, :null => false
    t.string "direction",         :limit => 3,   :null => false
    t.string "guard_callback",    :limit => 100
    t.text   "guard_custom_arg"
    t.string "guard_description", :limit => 500
  end

  add_index "wf_arcs", ["workflow_key", "place_key"], :name => "wf_arcs_wf_key_place_key_idx"
  add_index "wf_arcs", ["workflow_key", "transition_key"], :name => "wf_arcs_wf_key_trans_key_idx"

  create_table "wf_article_cases", :id => false, :force => true do |t|
    t.integer "case_id", :null => false
  end

  create_table "wf_attribute_value_audit", :id => false, :force => true do |t|
    t.integer "case_id",      :null => false
    t.integer "attribute_id", :null => false
    t.integer "journal_id",   :null => false
    t.text    "attr_value"
  end

  add_index "wf_attribute_value_audit", ["attribute_id"], :name => "wf_attr_val_aud_attr_id_idx"

  create_table "wf_case_assignments", :id => false, :force => true do |t|
    t.integer "case_id",                     :null => false
    t.string  "workflow_key", :limit => 100
    t.string  "role_key",     :limit => 100, :null => false
    t.integer "party_id",                    :null => false
  end

  add_index "wf_case_assignments", ["party_id"], :name => "wf_case_assgn_party_idx"

  create_table "wf_case_deadlines", :id => false, :force => true do |t|
    t.integer  "case_id",                       :null => false
    t.string   "workflow_key",   :limit => 100
    t.string   "transition_key", :limit => 100, :null => false
    t.datetime "deadline",                      :null => false
  end

  create_table "wf_cases", :id => false, :force => true do |t|
    t.integer "case_id",                                            :null => false
    t.string  "workflow_key", :limit => 100
    t.string  "context_key",  :limit => 100
    t.integer "object_id"
    t.string  "state",        :limit => 40,  :default => "created"
  end

  add_index "wf_cases", ["context_key"], :name => "wf_cases_context_key_idx"
  add_index "wf_cases", ["object_id"], :name => "wf_cases_object_id_idx"
  add_index "wf_cases", ["workflow_key"], :name => "wf_cases_workflow_key_idx"

  create_table "wf_context_assignments", :id => false, :force => true do |t|
    t.string  "context_key",  :limit => 100, :null => false
    t.string  "workflow_key", :limit => 100, :null => false
    t.string  "role_key",     :limit => 100, :null => false
    t.integer "party_id",                    :null => false
  end

  add_index "wf_context_assignments", ["workflow_key", "role_key"], :name => "wf_ctx_assg_workflow_trans_idx"

  create_table "wf_context_role_info", :id => false, :force => true do |t|
    t.string "context_key",           :limit => 100,  :null => false
    t.string "workflow_key",          :limit => 100,  :null => false
    t.string "role_key",              :limit => 100,  :null => false
    t.string "assignment_callback",   :limit => 100
    t.string "assignment_custom_arg", :limit => 4000
  end

  create_table "wf_context_task_panels", :id => false, :force => true do |t|
    t.string  "context_key",                 :limit => 100,                  :null => false
    t.string  "workflow_key",                :limit => 100,                  :null => false
    t.string  "transition_key",              :limit => 100,                  :null => false
    t.integer "sort_order",                                                  :null => false
    t.string  "header",                      :limit => 200,                  :null => false
    t.string  "template_url",                :limit => 500,                  :null => false
    t.string  "overrides_action_p",          :limit => 1,   :default => "f"
    t.string  "only_display_when_started_p", :limit => 1,   :default => "f"
  end

  add_index "wf_context_task_panels", ["workflow_key", "transition_key"], :name => "wf_ctx_panl_workflow_trans_idx"

  create_table "wf_context_transition_info", :id => false, :force => true do |t|
    t.string  "context_key",             :limit => 100, :null => false
    t.string  "workflow_key",            :limit => 100, :null => false
    t.string  "transition_key",          :limit => 100, :null => false
    t.integer "estimated_minutes"
    t.text    "instructions"
    t.string  "enable_callback",         :limit => 100
    t.text    "enable_custom_arg"
    t.string  "fire_callback",           :limit => 100
    t.text    "fire_custom_arg"
    t.string  "time_callback",           :limit => 100
    t.text    "time_custom_arg"
    t.string  "deadline_callback",       :limit => 100
    t.text    "deadline_custom_arg"
    t.string  "deadline_attribute_name", :limit => 100
    t.string  "hold_timeout_callback",   :limit => 100
    t.text    "hold_timeout_custom_arg"
    t.string  "notification_callback",   :limit => 100
    t.text    "notification_custom_arg"
    t.string  "unassigned_callback",     :limit => 100
    t.text    "unassigned_custom_arg"
  end

  add_index "wf_context_transition_info", ["workflow_key", "transition_key"], :name => "wf_ctx_trans_wf_trans_idx"

  create_table "wf_context_workflow_info", :id => false, :force => true do |t|
    t.string  "context_key",     :limit => 100, :null => false
    t.string  "workflow_key",    :limit => 100, :null => false
    t.integer "principal_party"
  end

  create_table "wf_contexts", :id => false, :force => true do |t|
    t.string "context_key",  :limit => 100, :null => false
    t.string "context_name", :limit => 100, :null => false
  end

  add_index "wf_contexts", ["context_name"], :name => "wf_contexts_context_name_un", :unique => true

  create_table "wf_places", :id => false, :force => true do |t|
    t.string  "place_key",    :limit => 100, :null => false
    t.string  "workflow_key", :limit => 100, :null => false
    t.string  "place_name",   :limit => 100, :null => false
    t.integer "sort_order"
  end

  add_index "wf_places", ["workflow_key", "place_name"], :name => "wf_places_wf_key_place_name_un", :unique => true

  create_table "wf_roles", :id => false, :force => true do |t|
    t.string  "role_key",     :limit => 100, :null => false
    t.string  "workflow_key", :limit => 100, :null => false
    t.string  "role_name",    :limit => 100, :null => false
    t.integer "sort_order"
  end

  add_index "wf_roles", ["workflow_key", "role_name"], :name => "wf_roles_wf_key_role_name_un", :unique => true

  create_table "wf_task_assignments", :id => false, :force => true do |t|
    t.integer "task_id",  :null => false
    t.integer "party_id", :null => false
  end

  add_index "wf_task_assignments", ["party_id"], :name => "wf_task_asgn_party_id_idx"

  create_table "wf_tasks", :id => false, :force => true do |t|
    t.integer  "task_id",                                                 :null => false
    t.integer  "case_id"
    t.string   "workflow_key",      :limit => 100
    t.string   "transition_key",    :limit => 100
    t.string   "state",             :limit => 40,  :default => "enabled"
    t.datetime "enabled_date"
    t.datetime "started_date"
    t.datetime "canceled_date"
    t.datetime "finished_date"
    t.datetime "overridden_date"
    t.datetime "trigger_time"
    t.datetime "deadline"
    t.integer  "estimated_minutes"
    t.integer  "holding_user"
    t.datetime "hold_timeout"
  end

  add_index "wf_tasks", ["case_id"], :name => "wf_tasks_case_id_idx"
  add_index "wf_tasks", ["holding_user"], :name => "wf_tasks_holding_user_idx"

  create_table "wf_tokens", :id => false, :force => true do |t|
    t.integer  "token_id",                                               :null => false
    t.integer  "case_id"
    t.string   "workflow_key",        :limit => 100
    t.string   "place_key",           :limit => 100
    t.string   "state",               :limit => 40,  :default => "free"
    t.integer  "locked_task_id"
    t.datetime "produced_date"
    t.datetime "locked_date"
    t.datetime "canceled_date"
    t.datetime "consumed_date"
    t.integer  "produced_journal_id"
    t.integer  "locked_journal_id"
    t.integer  "canceled_journal_id"
    t.integer  "consumed_journal_id"
  end

  add_index "wf_tokens", ["case_id"], :name => "wf_tokens_case_id_idx"

  create_table "wf_transition_attribute_map", :id => false, :force => true do |t|
    t.string  "workflow_key",   :limit => 100, :null => false
    t.string  "transition_key", :limit => 100, :null => false
    t.integer "sort_order",                    :null => false
    t.integer "attribute_id",                  :null => false
  end

  create_table "wf_transition_role_assign_map", :id => false, :force => true do |t|
    t.string "workflow_key",    :limit => 100, :null => false
    t.string "transition_key",  :limit => 100, :null => false
    t.string "assign_role_key", :limit => 100, :null => false
  end

  add_index "wf_transition_role_assign_map", ["workflow_key", "assign_role_key"], :name => "wf_role_asgn_map_wf_as_tr_idx"
  add_index "wf_transition_role_assign_map", ["workflow_key", "transition_key"], :name => "wf_role_asgn_map_wf_trans_idx"

  create_table "wf_transitions", :id => false, :force => true do |t|
    t.string  "transition_key",  :limit => 100, :null => false
    t.string  "transition_name", :limit => 100, :null => false
    t.string  "workflow_key",    :limit => 100, :null => false
    t.string  "role_key",        :limit => 100
    t.integer "sort_order"
    t.string  "trigger_type",    :limit => 40
  end

  add_index "wf_transitions", ["workflow_key", "transition_name"], :name => "wf_trans_wf_key_trans_name_un", :unique => true

  create_table "wf_workflows", :id => false, :force => true do |t|
    t.string "workflow_key", :limit => 100, :null => false
    t.text   "description"
  end

end
