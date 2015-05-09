class OmniauthCallbacksController < ApplicationController
  def facebook
    @auth = request.env["omniauth.auth"]

    @graph = Koala::Facebook::API.new(@auth.credentials.token)
    @photos = @graph.get_connections("me", "photos")

    if @photos.images.any?

    end

    # TODO: Store user photos to directory and update database
    binding.pry

  end
end
