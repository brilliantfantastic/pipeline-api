require_relative '../spec_helper'

describe PeriodsController do
  describe "GET 'show'" do
    it "returns 200 when the period exists" do
      get :show, id: 123, format: :json
      response.status.must_equal 200
    end
  end
end
