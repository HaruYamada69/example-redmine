if File.exist?("#{shared_path}/config/secret_token.rb") do
  run "rake19 genrate_secret_token"
  run "mv #{release_path}/config/initializers/secret_token.rb #{shared_path}/config/secret_token.rb"
end

run "ln -s #{shared_path}/config/secret_token.rb #{release_path}/config/initializers/secret_token.rb"

