require 'test_helper'

class WorkMemosControllerTest < ActionController::TestCase
  setup do
    @work_memo = work_memos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_memos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_memo" do
    assert_difference('WorkMemo.count') do
      post :create, work_memo: @work_memo.attributes
    end

    assert_redirected_to work_memo_path(assigns(:work_memo))
  end

  test "should show work_memo" do
    get :show, id: @work_memo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_memo
    assert_response :success
  end

  test "should update work_memo" do
    put :update, id: @work_memo, work_memo: @work_memo.attributes
    assert_redirected_to work_memo_path(assigns(:work_memo))
  end

  test "should destroy work_memo" do
    assert_difference('WorkMemo.count', -1) do
      delete :destroy, id: @work_memo
    end

    assert_redirected_to work_memos_path
  end
end
