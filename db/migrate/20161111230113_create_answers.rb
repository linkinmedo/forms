class CreateAnswers < ActiveRecord::Migration[5.0]

  def up
    create_table :answers do |t|
      t.integer "answer_groups_id"
      t.text "submitted_answer"
    end
    add_index("answers", "answer_groups_id")
  end

  def down
    drop_table :answers
  end
    
end
