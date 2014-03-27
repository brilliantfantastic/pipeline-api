require_relative '../spec_helper'

describe PeriodsController do
  describe "GET 'show'" do
    it "returns 200 when the period exists" do
      PeriodQuery.stubs(:for_week).with('201412').returns Period.new
      get :show, id: 201412, format: :json
      response.status.must_equal 200
    end

    it "returns 404 when the period does not exist" do
      get :show, id: 'blah', format: :json
      response.status.must_equal 404
    end
  end

  describe "POST 'create'" do
    it "returns 201 when the period is created" do
      period = Period.new week: 201423, hours_estimate: 63
      post :create, format: :json, period: period.as_json(only: [:week, :hours_estimate])
      response.status.must_equal 201
    end

    it "returns 422 when the period week already exists" do
      period = Period.create week: 201423
      post :create, format: :json, period: period.as_json(only: [:week, :hours_estimate])
      response.status.must_equal 422
    end
  end
end
