class FixAnswers < ActiveRecord::Migration[5.0]
  def up
    rename_column("answers", "answer_groups_id", "answer_group_id")
    rename_column("answer_groups", "question_id", "form_id")
  end

  def down
    rename_column("answer_groups", "form_id", "question_id")
    rename_column("answers", "answer_group_id", "answer_groups_id")
  end
end
