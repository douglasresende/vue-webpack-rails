module WebpackHelper
  def webpack_asset_url(asset)
    if Rails.env.development?
      "http://localhost:3500#{manifest.fetch(asset)['js']}"
    else
      "/assets/#{manifest.fetch(asset)}"
    end
  end

  def manifest
    @manifest ||= JSON.parse(File.read('webpack-assets.json'))
  rescue
    fail 'Please run webpack'
  end
end
