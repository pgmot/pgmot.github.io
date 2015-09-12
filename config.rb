set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

set :css_dir, 'stylesheets'

configure :build do
  activate :asset_hash
  activate :minify_html
  activate :minify_css
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "master"
end
