class FormsController < ApplicationController

  before_action :confirm_logged_in, :except => [:show]

  def index
    @forms = Form.where(:user_id => session[:user_id]).sorted
  end
  def show
    @form = Form.find(params[:id])
    @group = @form.answer_groups.build
    @answer = @group.answers.build
    # @form.questions.length.times { @group.answers.build }
  end

  def new
    @form = Form.new
    5.times do
      question = @form.questions.build
      question.answer_fields.build
    end
    # @form.answer_fields.build
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @form }
    # end
  end

  def create
    # Instantiate a new object using form parameters
    puts params[:form]
    @form = Form.new(form_params)
    @form.user_id = session[:user_id]
    # Save the object
    if @form.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Form #{@form.title} has been created successfully."
      redirect_to(forms_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @form = Form.find(params[:id])
  end

  def update
    @form = Form.find(params[:id])
    # Save the object
    if @form.update_attributes(form_params)
      # If save succeeds, redirect to the index action
      flash[:notice] = "Form #{@form.title} has been updated successfully."
      redirect_to(forms_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def delete
    @form = Form.find(params[:id])
  end

  def destroy
    @form = Form.find(params[:id])
    @form.destroy
    flash[:notice] = "Form '#{@form.title}' has been deleted successfully."
    redirect_to(forms_path)
  end

  private

  def form_params
    params.require(:form).permit(:title, questions_attributes: [:id, :position, :_destroy, :question_text, answer_fields_attributes: [:id, :answer_type, :text]])
    # params.require(:form).permit!
  end
end
