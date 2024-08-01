class ApplicationController < ActionController::Base
  def fallback_index_html
    if Rails.env.production?
      render file: "public/index.html", layout: false
    else
      redirect_to "/"
    end
  end

  protected

  # Override the method to redirect to /admin after sign in
  def after_sign_in_path_for(resource)
    '/admin'
  end
end