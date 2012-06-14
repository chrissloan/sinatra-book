require 'rubygems'
require 'sinatra'
require 'haml'

# For reading facebook graph item
require 'fbgraph'

#require 'yajl' # JSON Parser if needed

# Helpers
require './lib/render_partial'

# Facebook App Items
APP_ID = 123456
APP_CODE = 'stringed_thing'
APP_ADMINS = '1245,2345'
APP_TYPE = '' # Ex: Music, blog, site

SITE_URL = 'http://my-awesome-sinatra-app.com'
SITE_TITLE = 'My Awesome Sinatra App'
COMPANY_NAME = 'My Company'
PAGE_TITLE = ''

# Google Analytics
USE_ANALYTICS = true
GOOGLE_ANALYTIC_ID = 'UA-XXXXXXXX'

# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public, 'public'
set :haml, {:format => :html5}
enable :sessions

# Application routes
get '/' do
  haml :'front/index', locals: {liked: false}, layout: :'layouts/application'
end

# Facebook does post requests to show app
post '/' do
  # Setup for a like wall
  @auth = FBGraph::Canvas.parse_signed_request(APP_CODE, params[:signed_request])
  if @auth['page']['liked'] == true
    liked = true
    template = 'index'
  else
    liked = false
    template = 'wall'
  end

  haml :"front/#{template}", locals: {liked: liked}, layout: :'layouts/application'
end
