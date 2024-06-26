require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded any time
  # it changes. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.enable_reloading = true

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing
  config.server_timing = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Tell Active Support which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Highlight code that enqueued background job in logs.
  config.active_job.verbose_enqueue_logs = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  # config.action_view.annotate_rendered_view_with_filenames = true

  # Raise error when a before_action's only/except options reference missing actions
  config.action_controller.raise_on_missing_callback_actions = true

  config.lookbook.ui_theme = "blue"
  config.lookbook.project_name = "Buildout's Blueprint"
  config.lookbook.preview_collection_label = "Components"
  config.lookbook.preview_sort_scenarios = true
  config.lookbook.preview_inspector.sidebar_panels = [:pages, :previews]
  config.lookbook.project_logo = "<svg viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'>
                                    <g clip-path='url(#clip0_26_1805)'>
                                    <path d='M12.6995 24L17.7578 21.0941C18.2959 20.7713 18.7264 20.1255 18.7264 19.4798V10.8699C18.7264 10.2242 18.4036 9.57844 17.7578 9.25557L12.9148 6.45736C12.3767 6.13449 11.6233 6.13449 11.0852 6.45736L6.02688 9.36319C5.81163 9.47081 5.70401 9.79369 5.81163 10.0089C5.81163 10.1166 5.91925 10.1166 6.02688 10.2242L11.0852 13.13C11.6233 13.4529 12.0538 14.0986 12.0538 14.7444V23.6771C12.0538 23.8923 12.269 24.1076 12.5919 24.1076C12.5919 24 12.6995 24 12.6995 24Z' fill='currentColor'/>
                                    <path d='M22.7085 19.8027C23.139 20.0179 23.6771 19.9103 23.8924 19.4798C24 19.3722 24 19.157 24 19.0493V7.74888C24 7.42601 23.8924 7.10314 23.7848 6.78027C23.6771 6.4574 23.3543 6.24215 23.139 6.13453L18.0807 3.2287L12.9148 0.215247C12.5919 0.107623 12.2691 0 11.9462 0C11.6233 0 11.3004 0.107623 10.9776 0.215247L6.02691 3.2287L0.96861 6.13453C0.64574 6.24215 0.430493 6.56502 0.215247 6.78027C0.107623 7.10314 0 7.42601 0 7.74888V19.0493C0 19.5874 0.430493 19.9103 0.860987 19.9103C0.96861 19.9103 1.18386 19.9103 1.29148 19.8027L2.15247 19.2646C2.47534 19.157 2.58296 18.8341 2.58296 18.5112V9.25561C2.58296 8.93274 2.69058 8.60987 2.79821 8.287C3.01345 8.07175 3.2287 7.74888 3.44395 7.64126L7.21076 5.48879L10.9776 3.33632C11.3004 3.12108 11.6233 3.12108 11.9462 3.12108C12.2691 3.12108 12.5919 3.2287 12.9148 3.33632L16.6816 5.48879L20.4484 7.64126C20.7713 7.74888 20.9865 8.07175 21.0942 8.287C21.3094 8.60987 21.3094 8.93274 21.3094 9.25561V18.4036C21.3094 18.7265 21.5247 19.0493 21.7399 19.2646L22.7085 19.8027Z' fill='currentColor'/>
                                    <path d='M8.39462 15.8206L7.8565 15.4978C7.64125 15.3901 7.53363 15.0673 7.53363 14.7444V13.991C7.53363 13.7758 7.74888 13.5605 7.96412 13.5605C8.07175 13.5605 8.17937 13.5605 8.17937 13.6682L9.36323 14.3139C9.6861 14.4215 9.90134 14.7444 9.90134 15.0673C9.90134 15.6054 9.47085 16.0359 9.04036 16.0359C8.82511 15.9283 8.60986 15.9283 8.39462 15.8206Z' fill='currentColor'/>
                                    <path d='M8.39462 19.3722L7.8565 19.0493C7.64125 18.8341 7.53363 18.5112 7.53363 18.1883V17.4349C7.53363 17.2197 7.74888 17.0045 7.96412 17.0045C8.07175 17.0045 8.17937 17.0045 8.17937 17.1121L9.36323 17.7578C9.6861 17.9731 9.79372 18.1883 9.79372 18.5112C9.79372 19.0493 9.36323 19.4798 8.93273 19.4798C8.82511 19.4798 8.60986 19.3722 8.39462 19.3722Z' fill='currentColor'/>
                                    </g>
                                    <defs>
                                    <clipPath id='clip0_26_1805'>
                                    <rect width='24' height='24' fill='white'/>
                                    </clipPath>
                                    </defs>
                                    </svg>
                                  "
  config.lookbook.ui_theme_overrides = {
    base_50: "#F7F8F8",
    base_100: "#EEEEF2",
    base_200: "#D8DADF",
    base_300: "#B5B8C4",
    base_400: "#8E93A4",
    base_500: "#6E7487",
    base_600: "#4F5463",
    base_700: "#40434F",
    base_800: "#353741",
    base_900: "#2E3038",
    accent_50: "#DDEBFD",
    accent_100: "#A8BAF0",
    accent_200: "#87A0E8",
    accent_300: "#6685E0",
    accent_400: "#456BD8",
    accent_500: "#2450D0",
    accent_600: "#2042A7",
    accent_700: "#1D357E",
    accent_800: "#192755",
    accent_900: "#15192C",
    header_bg: "#1D357E",
  }

  config.lookbook.listen_paths = ["../../app/assets", "../../app/components", "../views"]
  config.lookbook.listen_extensions = ["js", "css", "slim"]

  config.assets.debug = true
  config.assets.check_precompiled_asset = false
end
