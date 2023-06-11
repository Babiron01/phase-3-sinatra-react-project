class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

 
  helpers do
    def protected!
      return if authorized?
      headers['WWW.Authenticate'] = 'Basic realm="Restricted Area"'
      halt 401, "You Are Not Authorised!!"
    end

    def authorized?
      @auth ||= Rack::Auth::Basic::Request.new(request.env)
      @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin','admin']
    end
  end


  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end
