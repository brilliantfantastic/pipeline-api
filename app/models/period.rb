class Period < ActiveRecord::Base
  validates :week, uniqueness: true
  validates :week, presence: true
end
