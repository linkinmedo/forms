require 'test_helper'

class AnswerGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get answer_groups_index_url
    assert_response :success
  end

  test "should get show" do
    get answer_groups_show_url
    assert_response :success
  end

  test "should get new" do
    get answer_groups_new_url
    assert_response :success
  end

  test "should get edit" do
    get answer_groups_edit_url
    assert_response :success
  end

  test "should get delete" do
    get answer_groups_delete_url
    assert_response :success
  end

end
