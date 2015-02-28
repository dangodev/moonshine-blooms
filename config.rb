# --------------------------------------
#   Config
# --------------------------------------

# ----- Livereload ----- #

activate :livereload

# ----- Site ----- #

set :site_url, 'http://madewithenvy.com'

# ----- Assets ----- #

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

# ----- Markdown ----- #

# --------------------------------------
#   Helpers
# --------------------------------------

# --------------------------------------
#   Content
# --------------------------------------

# ----- Directories ----- #

activate :directory_indexes
page "/404.html", directory_index: false

# --------------------------------------
#   Production
# --------------------------------------

# ----- Output ----- #

set :haml, {ugly: true, attr_wrapper: '"'}
activate :minify_html do |html|
  html.remove_quotes = false
end

# ----- Optimization ----- #

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  activate :gzip
end

# ----- Prefixing ----- #

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 10']
  config.cascade  = false
end
