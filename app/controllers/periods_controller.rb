class PeriodsController < ApplicationController
  def show
    period = PeriodQuery.for_week params[:id]
    raise ActiveRecord::RecordNotFound unless period
    render json: period
  end
end
