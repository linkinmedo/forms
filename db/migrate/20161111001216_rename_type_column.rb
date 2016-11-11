class RenameTypeColumn < ActiveRecord::Migration[5.0]
  def up
    rename_column("answer_fields", "type", "answer_type")
  end

  def down
    rename_column("answer_fields", "answer_type", "type")
  end
end
