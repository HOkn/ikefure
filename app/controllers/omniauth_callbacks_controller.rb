class OmniauthCallbacksController < ApplicationController
  def facebook
    @auth = request.env["omniauth.auth"]
    # TODO: Store user photos to directory and update database
    binding.pry
  end
end
