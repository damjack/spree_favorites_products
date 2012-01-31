Rails.application.routes.draw do

  # non-restful checkout stuff
  match '/products/most_viewed', :to => 'products#mostviewed', :as => :most_viewed
  match '/products/total_sold', :to => 'products#totalsold', :as => :total_sold

end
