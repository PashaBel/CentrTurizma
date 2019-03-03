require 'test_helper'

class TourReportControllerTest < ActionDispatch::IntegrationTest
  test "should get tour_report" do
    get tour_report_tour_report_url
    assert_response :success
  end

end
