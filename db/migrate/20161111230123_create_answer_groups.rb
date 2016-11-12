class CreateAnswerGroups < ActiveRecord::Migration[5.0]
  
  def up
    create_table :answer_groups do |t|
      t.integer "question_id"
      t.timestamps
    end
    add_index("answer_groups", "question_id")
  end

  def down
    drop_table :answer_groups
  end
end
