class AnswerGroupsController < ApplicationController

  before_action :confirm_logged_in, :except => [:create]

  def index
    if params[:id]
      @answer_groups = AnswerGroup.where(:form_id => params[:id])
      @form = Form.find(params[:id])
    else
      @answer_groups = AnswerGroup.all
    end
  end

  def show
    @answer_group = AnswerGroup.find(params[:id])
    @form = Form.find(@answer_group.form_id)
  end

  def new
  end

  def create
    @answer_group = AnswerGroup.new(answer_group_params)
    if @answer_group.save
      redirect_to(forms_thank_you_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
  end

  def delete
    @answer_group = AnswerGroup.find(params[:id])
  end

  def destroy
    @answer_group = AnswerGroup.find(params[:id])
    @answer_group.destroy
    flash[:notice] = "Form has been deleted successfully."
    redirect_to(answer_groups_path(:id => @answer_group.form_id))
  end

  private

  def answer_group_params
    params.require(:answer_group).permit(:form_id ,answers_attributes: [:question_id ,:submitted_answer])
  end
end
