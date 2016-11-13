module ApplicationHelper

  def error_messages_for(object)
    render(:partial => 'application/error_messages', :locals => {:object => object})
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to(name, "#", onclick: "remove_fields(this)", class: "btn-sm btn-danger")
  end

  def link_to_add_fields(name, f, association)
    # new_object = @form.questions.build
    # new_object.answer_fields.build
    # id = new_object.object_id
    fields = render( "question_fields", :f => f)
    link_to(name, '#', class: "add_fields btn btn-lg btn-info", data: {fields: fields.gsub("\n", "")})
  end

end
