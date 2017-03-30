require 'test_helper'

class PtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ptype = ptypes(:one)
  end

  test 'should get index' do
    get ptypes_url
    assert_response :success
  end

  test 'should get new' do
    get new_ptype_url
    assert_response :success
  end

  test 'should create ptype' do
    assert_difference('Ptype.count') do
      post ptypes_url, params: { ptype: { name: @ptype.name } }
    end

    assert_redirected_to ptype_url(Ptype.last)
  end

  test 'should show ptype' do
    get ptype_url(@ptype)
    assert_response :success
  end

  test 'should get edit' do
    get edit_ptype_url(@ptype)
    assert_response :success
  end

  test 'should update ptype' do
    patch ptype_url(@ptype), params: { ptype: { name: @ptype.name } }
    assert_redirected_to ptype_url(@ptype)
  end

  test 'should destroy ptype' do
    assert_difference('Ptype.count', -1) do
      delete ptype_url(@ptype)
    end

    assert_redirected_to ptypes_url
  end
end
