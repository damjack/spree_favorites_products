Deface::Override.new(:virtual_path => "layouts/spree_application",
                     :name => "favorites_sidebar",
                     :insert_bottom => "div#sidebar",
                     :partial => "shared/favorites")
