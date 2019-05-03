# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_190_503_092_140) do
  create_table 'users', force: :cascade do |t|
    t.string 'email'
    t.string 'username'
    t.string 'password'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
