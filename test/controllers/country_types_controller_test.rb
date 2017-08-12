require 'test_helper'

class CountryTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country_type = country_types(:one)
  end

  test "should get index" do
    get country_types_url, as: :json
    assert_response :success
  end

  test "should create country_type" do
    assert_difference('CountryType.count') do
      post country_types_url, params: { country_type: { country_id: @country_type.country_id, student_id: @country_type.student_id, teacher_id: @country_type.teacher_id, type: @country_type.type } }, as: :json
    end

    assert_response 201
  end

  test "should show country_type" do
    get country_type_url(@country_type), as: :json
    assert_response :success
  end

  test "should update country_type" do
    patch country_type_url(@country_type), params: { country_type: { country_id: @country_type.country_id, student_id: @country_type.student_id, teacher_id: @country_type.teacher_id, type: @country_type.type } }, as: :json
    assert_response 200
  end

  test "should destroy country_type" do
    assert_difference('CountryType.count', -1) do
      delete country_type_url(@country_type), as: :json
    end

    assert_response 204
  end
end
