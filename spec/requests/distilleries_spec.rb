require 'rails_helper'

RSpec.describe "Distilleries", type: :request do
  describe "GET /distilleries" do
    it "works! (now write some real specs)" do
      get distilleries_path
      expect(response).to have_http_status(200)
    end
  end
end
