Rails.env.on(:any) do
  config.generators do |g|
    # Disable assets generation per controller/action.
    g.assets = false

    # Disable stylesheets generation per controller/action.
    g.stylesheets false

    # Disable javascript generation per controller/action.
    g.javascripts false

    # Disable fixtures generation.
    g.test_framework :test_unit, fixture: false

    # Disable helper generation.
    g.helper = false

    # Disable route generation.
    g.skip_routes = true
  end
end
