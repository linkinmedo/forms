module ApplicationHelper
  def error_messages_for(object)
    render(:partial => 'application/error_messages', :locals => {:object => object})
  end
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to(name, "#", onclick: "remove_fields(this)", class: "btn-sm btn-danger")
  end
end
