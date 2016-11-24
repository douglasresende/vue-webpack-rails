Rails.application.config.webpacked.enabled = true
Rails.application.config.webpacked.manifest_path = 'webpack-assets.json'
Rails.application.config.webpacked.load_manifest_on_initialize = false
Rails.application.config.webpacked.common_entry_name = 'common'
Rails.application.config.webpacked.bin = 'node_modules/.bin/webpack'
# Rails.application.config.webpacked.config = 'frontend/main.config.js'
Rails.application.config.webpacked.config = 'frontend/config/index.js'
Rails.application.config.webpacked.dev_server = Rails.env.development?
