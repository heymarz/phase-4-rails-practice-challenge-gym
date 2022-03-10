class ClientController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_error_response

def show
  client = Client.find(params[:id])
  render json: client
end

  private
  def render_error_response
    render json: {error: "Client not Found"}, status: :not_found
  end

end
