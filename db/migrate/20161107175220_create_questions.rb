class CreateQuestions < ActiveRecord::Migration[5.0]
  def up
    create_table :questions do |t|
      t.integer "form_id"
      t.integer "position"
      t.string "question_text"
      t.timestamps
    end
    add_index("questions", "form_id")
  end

  def down
    drop_table :questions
  end
end
