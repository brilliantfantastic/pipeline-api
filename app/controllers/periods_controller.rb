class PeriodsController < ApplicationController
  def show
    period = Period.where(week: params[:id].to_i).first
    raise ActiveRecord::RecordNotFound unless period
    render json: period
  end
end
