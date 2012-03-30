Rails.application.routes.draw do

  match '/most_viewed', :to => 'products#mostviewed', :as => :most_viewed
  match '/total_sold', :to => 'products#totalsold', :as => :total_sold

end
