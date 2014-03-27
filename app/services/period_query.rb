class PeriodQuery
  def self.for_week(week)
    Period.where(week: week.to_i).first
  end
end
