require 'bundler'
Bundler.require
require_relative 'health'


module Health
  class App < Sinatra::Application

    #configure
    configure do
      set :root, File.dirname(__FILE__)
      set :public_folder, 'public'
    end

    #database
    set :database, "sqlite3:health.db"

    #filters

    #routes
    get '/' do
      haml :index
    end

    #helpers
    helpers do
      def partial(file_name)
        haml file_name, :layout => false
      end

      def link_to(url,text=url,opts={})
        attributes = ""
        opts.each { |key,value| attributes << key.to_s << "=\"" << value << "\" "}
        "<a href=\"#{url}\" #{attributes}>#{text}</a>"
      end
    end

  end
end
