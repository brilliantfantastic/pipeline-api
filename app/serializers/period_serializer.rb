class PeriodSerializer < ActiveModel::Serializer
  attributes :id, :week, :hours_estimate, :created_at, :updated_at
end
