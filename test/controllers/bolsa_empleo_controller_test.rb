require "test_helper"

class BolsaEmpleoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bolsa_empleo_index_url
    assert_response :success
  end
end
