require 'rails_helper'

RSpec.describe "Raws", type: :request do
  describe "GET /raws" do
    it "works! (now write some real specs)" do
      get raws_path
      expect(response).to have_http_status(200)
    end
  end
end
