class ApplicationController < ActionController::API
  rescue_from "ActiveRecord::RecordNotFound", with: :record_not_found
  rescue_from "ActiveRecord::RecordInvalid", with: :record_invalid

  private

  def record_not_found
    render json: {error: "not_found"}, status: :not_found
  end

  def record_invalid
    render json: {error: ""}, status: :unprocessable_entity
  end
end
