require 'test_helper'

class AnswerFieldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get answer_fields_index_url
    assert_response :success
  end

  test "should get show" do
    get answer_fields_show_url
    assert_response :success
  end

  test "should get new" do
    get answer_fields_new_url
    assert_response :success
  end

  test "should get edit" do
    get answer_fields_edit_url
    assert_response :success
  end

  test "should get delete" do
    get answer_fields_delete_url
    assert_response :success
  end

end
