class ApplicationController < ActionController::Base
    def fallback_index_html
    if Rails.env.production?
      render :file => "public/index.html", layout: false
    else
      redirect_to "/"
    end
  end
end
