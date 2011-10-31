# contactr.rb
#
require 'rubygems'
require 'bundler/setup'
require 'sinatra'

post '/contact/' do
	
end

# serves up a demo contact me form, which
get '/demo/?' do
	erb :demo
end

# page that is redirected too when the form has 
# been successfully submitted and email been sent
get '/demo/success/' do
	
end

# page that is redirected too when the form has 
# been successfully submitted and email been sent
get '/demo/failure/' do
	
end
