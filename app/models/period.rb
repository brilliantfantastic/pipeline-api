class Period < ActiveRecord::Base
  validates :week, uniqueness: true
end
