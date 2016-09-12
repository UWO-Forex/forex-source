activate :automatic_image_sizes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote   = 'https://github.com/UWO-Forex/UWO-Forex.github.io.git'
  deploy.branch   = 'master'
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
