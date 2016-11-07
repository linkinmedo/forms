class CreateForms < ActiveRecord::Migration[5.0]
  def up
    create_table :forms do |t|
      t.integer "user_id"
      t.string "title"
      t.timestamps
    end
    add_index("forms", "user_id")
  end

  def down
    drop_table :forms
  end
end
