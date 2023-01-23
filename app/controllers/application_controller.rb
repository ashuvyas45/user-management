class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  rescue_from ActionController::ParameterMissing, with: :handle_param_missing
  def render_response(response)
    render json: response.body, status: response.status
  end

  private

  def handle_param_missing(exception)
    render_response(
      ServiceResponse.errors(["missing required params: #{exception.param}"])
    )
  end
end
