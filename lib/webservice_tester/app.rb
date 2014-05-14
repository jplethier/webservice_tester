require 'sinatra/base'

module WebserviceTester
  class App < Sinatra::Base
    get('/') { haml :main }
    get('/webservice_tester.css') { scss :main }
    get('/webservice_tester.js') { coffee :main }
  end

  API_VERSIONS = []
end