Deface::Override.new(:virtual_path => "products/show",
                     :name => "favorites_product_show",
                     :insert_after => "[data-hook='product_show']",
                     :partial => "products/increment_viewed")
