# Endpoints for authentication via API
#
# To authenticate, POST to /api/auth with the following parameters:
# {
#   "user": {
#     "email": "...."
#     "password": "..."
#   }
# }
#
# You will either get a 200 OK response with the following body:
#
# { "ok": true }
#
# or you will get a 401 Unauthorized response with no body.
#
# To log out, DELETE to /api/auth. You will get a 204 No Content response
# with no body.
#
class Api::AuthController < Devise::SessionsController
  skip_before_action :verify_authenticity_token

  respond_to :json

  private

  def respond_with(user, _opts = {})
    if signed_in?
      render json: {ok: signed_in?}
    else
      head :unauthorized
    end
  end

  def respond_to_on_destroy
    head :no_content
  end
end