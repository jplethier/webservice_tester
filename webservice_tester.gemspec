require File.expand_path('../lib/webservice_tester/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["marcelloma"]
  gem.email         = ["marcello.m.albuquerque@gmail.com"]
  gem.description   = %q{Sinatra mountable application to test webservices}
  gem.summary       = %q{}
  gem.homepage      = ""
  gem.name          = "webservice_tester"
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]
  gem.version       = WebserviceTester::VERSION
  gem.add_dependency "sinatra"
  gem.add_dependency "haml"
  gem.add_dependency "sass"
  gem.add_dependency "coffee-script"
end
