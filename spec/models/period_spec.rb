require_relative '../spec_helper'

describe Period do
  describe 'validations' do
    it 'requires that the week is unique' do
      week = 201432
      Period.create week: week
      period = Period.new week: week
      period.wont_be :valid?
    end
  end
end
