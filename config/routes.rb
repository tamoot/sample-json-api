Rails.application.routes.draw do
   scope module: 'api' do
      namespace :v1 do
         resources :hosts, :only => [:index, :show], :defaults => { :format => 'json' }
      end
   end
end
