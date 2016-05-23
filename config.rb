require 'extensions/build_cleaner'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false



configure :development do
  activate :livereload
end

configure :build do
  activate :relative_assets
  activate :build_cleaner
#  set :http_prefix, "/middleman"
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-77953492-1'
end

activate :blog do |blog|
  # set options on blog
end

activate :directory_indexes do
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
