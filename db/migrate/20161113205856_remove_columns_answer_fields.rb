class RemoveColumnsAnswerFields < ActiveRecord::Migration[5.0]
  def up
    remove_column("answer_fields", "dropdown")
    remove_column("answer_fields", "radio_button")
  end
  def down
    add_column("answer_fields", "radio_button")
    add_column("answer_fields", "dropdown")
  end
end
