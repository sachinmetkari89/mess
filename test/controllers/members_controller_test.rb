require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { mem_address: @member.mem_address, mem_alt_mobile_no: @member.mem_alt_mobile_no, mem_email: @member.mem_email, mem_first_name: @member.mem_first_name, mem_last_name: @member.mem_last_name, mem_mobile_no: @member.mem_mobile_no }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { mem_address: @member.mem_address, mem_alt_mobile_no: @member.mem_alt_mobile_no, mem_email: @member.mem_email, mem_first_name: @member.mem_first_name, mem_last_name: @member.mem_last_name, mem_mobile_no: @member.mem_mobile_no }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
