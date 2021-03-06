Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( bx_loader.gif )
Rails.application.config.assets.precompile << %w( store/print.css )
Rails.application.config.assets.precompile << %w( icons.svg icons.ttf icons.eot icons.woff )
Rails.application.config.assets.precompile << %w( images/bx_loader.gif images/controls.png )

# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
end
Spree::AppConfiguration.preference :theme_background_color, :string, default: "#FFFFFF"

Spree.user_class = "Spree::User"