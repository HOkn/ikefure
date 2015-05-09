require 'rails_helper'

RSpec.describe "Faces", type: :request do
  describe "GET /faces" do
    it "works! (now write some real specs)" do
      get faces_path
      expect(response).to have_http_status(200)
    end
  end
end
