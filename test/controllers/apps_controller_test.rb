require 'test_helper'

class AppsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "api endpoint exist and work" do
    assert_routing({method: 'get', path: '/apps'}, {controller: "apps", action: "index"}) 
  end
end
