class ApplicationController < ActionController::API
  #for checking authentication before each request
  before_action :authenticate_request
  #for login user
  attr_reader :current_user

  include ExceptionHandler

  private
  #for handling unauthorized requests.
  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
