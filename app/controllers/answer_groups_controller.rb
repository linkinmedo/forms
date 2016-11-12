class AnswerGroupsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @answer_group = AnswerGroup.new(form_params)
    # Save the object
    if @answer_group.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Form has been created successfully."
      redirect_to(forms_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render(form_path(@answer_group.form_id))
    end
  end

  def edit
  end

  def delete
  end

  private

  def form_params
    params.require(:answer_group).permit(:form_id ,answers_attributes: [:submitted_answer])
  end
end
