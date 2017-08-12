require 'test_helper'

class AppCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_country = app_countries(:one)
  end

  test "should get index" do
    get app_countries_url, as: :json
    assert_response :success
  end

  test "should create app_country" do
    assert_difference('AppCountry.count') do
      post app_countries_url, params: { app_country: { name: @app_country.name } }, as: :json
    end

    assert_response 201
  end

  test "should show app_country" do
    get app_country_url(@app_country), as: :json
    assert_response :success
  end

  test "should update app_country" do
    patch app_country_url(@app_country), params: { app_country: { name: @app_country.name } }, as: :json
    assert_response 200
  end

  test "should destroy app_country" do
    assert_difference('AppCountry.count', -1) do
      delete app_country_url(@app_country), as: :json
    end

    assert_response 204
  end
end
