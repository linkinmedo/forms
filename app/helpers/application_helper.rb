module ApplicationHelper

  def error_messages_for(object)
    render(:partial => 'application/error_messages', :locals => {:object => object})
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to(name, "#", class: "remove_fields btn-sm btn-danger")
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    new_object.answer_fields.build
    id = @counter
    fields = render("question_fields", f: f)
    #f.fields_for(association, new_object, child_index: id) do |builder|
    link_to(name, '#', class: "add_fields btn btn-lg btn-info", data: {fields: fields.gsub("\n", "")})
  end

end
