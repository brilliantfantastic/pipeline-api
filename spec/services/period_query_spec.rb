require_relative '../spec_helper'

describe PeriodQuery do
  describe '.for_week' do
    it "returns a single period for a specific week" do
      result = Period.new
      Period.stubs(:where).with(week: 201412).returns stub(first: result)
      PeriodQuery.for_week('201412').must_equal result
    end

    it "returns nil if there is no week provided" do
      PeriodQuery.for_week(nil).must_be_nil
    end
  end
end
