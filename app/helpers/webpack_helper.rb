module WebpackHelper
  def manifest
    @manifest ||= JSON.parse(File.read('webpack-assets.json'))
  rescue
    raise 'Please run webpack'
  end

  def webpack_js_tag(asset)
    if Rails.env.development?
      javascript_include_tag "http://localhost:3500#{manifest.fetch(asset)['js']}"
    else
      javascript_include_tag "/assets/#{manifest.fetch(asset)}"
    end
  end

  def webpack_css_tag(asset)
    if Rails.env.development?
      stylesheet_link_tag "http://localhost:3500#{manifest.fetch(asset)['css']}", media: 'all'
    else
      stylesheet_link_tag "/assets/#{manifest.fetch(asset)}", media: 'all'
    end
  end

  def all_assets
    assets = ''
    manifest.each do |name, _value|
      manifest[name].each do |type, path|
        assets << case type
                  when 'js'
                    javascript_include_tag path
                  when 'css'
                    stylesheet_link_tag path, media: 'all'
                  else
                    raise %(#{type} still not implemented)
                  end
      end
    end
    assets
  end
end
