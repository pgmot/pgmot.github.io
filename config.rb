set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'

configure :build do
  activate :minify_html
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  activate :gzip
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.remote = 'git@github.com:pgmot/pgmot.github.io.git'
  deploy.branch = 'master'
  deploy.build_before = true
end
