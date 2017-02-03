$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "multi_client/backend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "multi_client_backend"
  s.version     = MultiClient::Backend::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/multi_client_backend"
  s.summary     = "MultiClient::Backend."
  s.description = "MultiClient::Backend Module."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails"
end
