require_relative '../spec_helper'

describe PeriodSerializer do
  let(:created_at) { Date.new(2014, 03, 31) }
  let(:period) { Period.new({id: 123, week: 201423, hours_estimate: 32, created_at: created_at, updated_at: created_at}) }

  it 'serializes a `Period` into JSON' do
    serializer = PeriodSerializer.new period
    serializer.to_json.must_equal '{"period":{"id":123,"week":201423,"hours_estimate":32,"created_at":"2014-03-31T00:00:00.000Z","updated_at":"2014-03-31T00:00:00.000Z"}}'
  end
end
