module ShipToMultiple
  class Railtie < Rails::Railtie
    initializer "my_railtie.configure_rails_initialization" do |app|
      app.config.tkml_features << "ship_to_multiple"
      app.config.autoload_paths += [
        File.expand_path(
          "#{Rails.root}/features/order_approval/lib/ship_to_multiple.rb"
        )
      ]
    end
  end
end
