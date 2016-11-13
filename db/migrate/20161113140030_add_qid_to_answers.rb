class AddQidToAnswers < ActiveRecord::Migration[5.0]
  def up
    add_column("answers", "question_id", :integer, :after => "answer_group_id")
    add_index("answers", "question_id")
  end

  def down
    remove_index("answers", "question_id")
    remove_column("answers", "question_id")
  end
end
