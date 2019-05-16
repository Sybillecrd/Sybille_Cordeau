activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets
activate :meta_tags
activate :protect_emails
activate :directory_indexes

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :url_root, 'http://www.sybillecordeau.fr'
activate :search_engine_sitemap

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
