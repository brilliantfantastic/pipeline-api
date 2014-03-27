require_relative '../spec_helper'

describe Period do
  describe 'validations' do
    it 'requires that the week is unique' do
      week = 201432
      Period.create week: week
      period = Period.new week: week
      period.wont_be :valid?
      period.errors[:week].must_include "has already been taken"
    end

    it 'requires a week' do
      period = Period.new
      period.wont_be :valid?
      period.errors[:week].must_include "can't be blank"
    end
  end
end
