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
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render("question_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields btn btn-lg btn-info", data: {id: id,fields: fields.gsub("\n", "")})
  end

end
