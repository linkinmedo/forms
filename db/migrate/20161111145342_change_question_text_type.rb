class ChangeQuestionTextType < ActiveRecord::Migration[5.0]
  def up
    change_column("questions", "question_text", :text)
  end

  def down
    change_column("questions", "question_text", :string)
  end
end
