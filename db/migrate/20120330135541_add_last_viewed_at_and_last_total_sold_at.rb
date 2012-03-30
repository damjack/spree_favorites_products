class AddLastViewedAtAndLastTotalSoldAt < ActiveRecord::Migration
  def up
    add_column :products, :last_viewed_at, :datetime
    add_column :products, :last_sold_at, :datetime
  end

  def down
    remove_column :products, :last_viewed_at
    remove_column :products, :last_sold_at
  end
end
