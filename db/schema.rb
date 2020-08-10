ActiveRecord::Schema.define(version: 20_200_803_215_011) do
  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'email'
    t.string 'password'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
