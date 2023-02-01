# Configure JWTAuth middleware to add authorization tokens to
# our API authentication endpoints. This ensures there is an
# Authorization: Bearer <token> header on the request.

Warden::JWTAuth.configure do |config|
  config.dispatch_requests = [
    ["POST", %r{^/api/auth$}]
  ]
end
