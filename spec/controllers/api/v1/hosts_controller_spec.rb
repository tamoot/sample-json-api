require 'rails_helper'

RSpec.describe Api::V1::HostsController, :type => :controller do

   context "GET hosts" do
      render_views
      it "listed hosts information" do
         get :index, :format => :json
         expect(response.status).to eq 200
         expect(response.body).to have_json_path('hosts')
      end
   end
end
