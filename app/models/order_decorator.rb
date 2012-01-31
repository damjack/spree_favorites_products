Order.class_eval do
  after_update :increment_sold
  
  def increment_sold
    if self.completed?
      self.products.each do |p|
        p.total_sold = p.total_sold + 1
        p.save!
      end
    end
  end
  
end