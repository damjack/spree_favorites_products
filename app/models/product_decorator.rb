Product.class_eval do
  
  scope :most_viewed, lambda {|l| {:conditions => ["viewed_count >= ?", Spree::Config[:most_viewed_from] || 1]}}
  scope :total_sold, lambda {|l| {:conditions => ["total_sold >= ?", Spree::Config[:total_sold_from] || 1]}}
  
  def increment_viewed
    self.viewed_count = self.viewed_count + 1
    self.save!
  end
  
end