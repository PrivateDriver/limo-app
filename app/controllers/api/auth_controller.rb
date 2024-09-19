# Endpoints for authentication via API
#
# To authenticate, POST to /api/auth with the following parameters:
# {
#   "user": {
#     "email": "....",
#     "password": "..."
#   }
# }
#
# You will either get a 200 OK response with the following body:
#
# { "ok": true }
#
# There will also be a header of the following:
# Authorization:	Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjc3MDkwMjUyLCJleHAiOjE2NzcwOTM4NTIsImp0aSI6ImFhNTcxYjBmLWM3MzAtNDg2ZS05NjdiLWExM2RhZTgwNGY5ZSJ9.Jbll8fg-Q6SVIYcXfkhy0_pEAWPFB1ahnbAA5EtBw3E
#
# This is the header you'll want to save and use for all future requests.
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
      render json: {ok: signed_in?, user: resource }
    else
      head :unauthorized
    end
  end

  def respond_to_on_destroy
    head :no_content
  end
end