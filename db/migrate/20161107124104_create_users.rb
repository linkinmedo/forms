class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string "username", :limit => 25
      t.string "password_digest"
      t.string "email", :limit => 100
      t.timestamps
    end
  end
end
