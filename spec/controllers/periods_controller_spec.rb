require_relative '../spec_helper'

describe PeriodsController do
  describe "GET 'show'" do
    it "returns 200 when the period exists" do
      Period.stubs(:where).with(week: 201412).returns stub(first: Period.new)
      get :show, id: 201412, format: :json
      response.status.must_equal 200
    end

    it "returns 404 when the period does not exist" do
      get :show, id: 'blah', format: :json
      response.status.must_equal 404
    end
  end
end
