# encoding: utf-8
require 'rubygems'
require 'bundler'

Bundler.require

I18n.load_path += Dir[File.join(File.dirname(__FILE__), 'config', 'locales', '*.yml').to_s]

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::AdvancedRoutes
  register Sinatra::AssetPack
  register Sinatra::Reloader if development?

  helpers do
    def t(*args)
      I18n.t(*args)
    end
  end

  assets {
    serve '/',     from: 'assets/public'
    serve '/fonts',     from: 'assets/fonts'
    serve '/js',     from: 'assets/js'
    serve '/css',    from: 'assets/css'
    serve '/img', from: 'assets/img'

    js :app, '/js/app.js', [
      '/js/vendor/jquery-1.9.1.min.js',
      '/js/main.js'
    ]
    css :app, '/css/application.css', [
      '/css/styles.css',
    ]
  }

  {:fr => '/', :en => '/en'}.each do |locale, path|
    get path do
      I18n.locale = locale
      I18n.reload! if App.development?
      erb :index
    end
  end
end