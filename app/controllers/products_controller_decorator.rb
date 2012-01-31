ProductsController.class_eval do
  
  def mostviewed
    @products = Product.available.most_viewed.order("viewed_count DESC")
    respond_with(@products)
  end
  
  def totalsold
    @products = Product.available.total_sold.order("total_sold DESC")
    respond_with(@products)
  end
  
end