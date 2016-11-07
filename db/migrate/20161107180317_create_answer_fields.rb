class CreateAnswerFields < ActiveRecord::Migration[5.0]
  def up
    create_table :answer_fields do |t|
      t.integer "question_id"
      t.string "type"
      t.text "text"
      t.string "dropdown"
      t.string "radio_button"
      t.timestamps
    end
    add_index("answer_fields", "question_id")
  end

  def down
    drop_table :answer_fields
  end
end
