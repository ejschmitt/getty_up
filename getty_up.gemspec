$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "getty_up/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "getty_up"
  s.version     = GettyUp::VERSION
  s.authors     = ["Erick Schmitt"]
  s.email       = ["ejschmitt@gmail.com"]
  s.homepage    = "https://github.com/ejschmitt/getty_up"
  s.summary     = "Gem for using getty connect API"
  s.description = "Getty connect gem"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"
  s.add_dependency 'hashery', '2.1.0'

end
