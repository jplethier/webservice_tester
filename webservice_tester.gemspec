require File.expand_path('../lib/webservice_tester/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["marcelloma"]
  gem.email         = ["marcello.m.albuquerque@gmail.com"]
  gem.description   = %q{Sinatra mountable application to test webservices}
  gem.summary       = %q{Sinatra mountable application to test webservices}
  gem.homepage      = "https://github.com/marcelloma/webservice_tester"
  gem.name          = "webservice_tester"
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]
  gem.version       = WebserviceTester::VERSION

  gem.add_dependency "sinatra", ">= 1.3.3"
  gem.add_dependency "haml", ">= 3.1.7"
  gem.add_dependency "sass", ">= 3.2.3"
  gem.add_dependency "coffee-script", ">= 2.2.0"
end
