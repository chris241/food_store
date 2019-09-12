ActiveRecord::Schema.define(version: 2019_09_12_081443) do
  enable_extension "plpgsql"
  create_table "commands", force: :cascade do |t|
    t.bigint "client_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_commands_on_client_id"
  end

end
