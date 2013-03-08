rakecmd = 'rake'
if !File.exist?("/usr/bin/rake") rakecmd = 'rake19'

if !File.exist?("#{shared_path}/config/secret_token.rb") then
  run "#{rakecmd} generate_secret_token"
  run "mv #{release_path}/config/initializers/secret_token.rb #{shared_path}/config/secret_token.rb"
end

run "ln -s #{shared_path}/config/secret_token.rb #{release_path}/config/initializers/secret_token.rb"

