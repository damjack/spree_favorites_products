class AddMostViewdAndBestSellerToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :viewed_count, :integer, :default => 0, :null => false
    add_column :products, :total_sold, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :products, :viewed_count
    remove_column :products, :total_sold
  end
end
