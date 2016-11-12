function remove_fields(link) {
  event.preventDefault();
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}
