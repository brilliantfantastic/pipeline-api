class PeriodsController < ApplicationController
  def show
    period = PeriodQuery.for_week params[:id]
    raise ActiveRecord::RecordNotFound unless period
    render json: period
  end

  def create
    period = Period.create period_params
    render json: period, status: :created
  end

  private

  def period_params
    params.require(:period).permit(:week, :hours_estimate)
  end
end
