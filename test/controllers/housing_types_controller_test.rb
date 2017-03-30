require 'test_helper'

class HousingTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housing_type = housing_types(:one)
  end

  test 'should get index' do
    get housing_types_url
    assert_response :success
  end

  test 'should get new' do
    get new_housing_type_url
    assert_response :success
  end

  test "should create housing_type" do
    assert_difference('HousingType.count') do
      post housing_types_url, params: { housing_type: { name: @housing_type.name } }
    end

    assert_redirected_to housing_type_url(HousingType.last)
  end

  test "should show housing_type" do
    get housing_type_url(@housing_type)
    assert_response :success
  end

  test 'should get edit' do
    get edit_housing_type_url(@housing_type)
    assert_response :success
  end

  test "should update housing_type" do
    patch housing_type_url(@housing_type), params: { housing_type: { name: @housing_type.name } }
    assert_redirected_to housing_type_url(@housing_type)
  end

  test "should destroy housing_type" do
    assert_difference('HousingType.count', -1) do
      delete housing_type_url(@housing_type)
    end

    assert_redirected_to housing_types_url
  end
end
