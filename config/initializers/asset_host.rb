Rails.env.on(:any) do
  config.action_controller.asset_host = StellarWatcherApp::Config.asset_host
end
