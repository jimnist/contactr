# app.rb
#
require 'rubygems'
# require 'bundler/setup'
require 'sinatra'
# require 'pony'

post '/contact/:key' do
    name = params[:contact_name]
    from = params[:contact_email]
    subj = params[:contact_subject]
    body = params[:contact_message]

    # Pony.mail(:to => '*emailaddress*', :from => "#{from}", :subject => "CONTACT ME: #{subj}", :body => "#{body}")
end

# serves up a demo contact me form, which
get '/demo/?' do
    erb :demo
end

post '/demo/contact/:key' do
    name = params[:contact_name]
    from = params[:contact_email]
    subj = params[:contact_subject]
    body = params[:contact_message]

    redirect "/demo/contacted?name=#{name}"
    # Pony.mail(:to => '*emailaddress*', :from => "#{from}", :subject => "CONTACT ME: #{subj}", :body => "#{body}")
end

get '/demo/contacted' do
    erb :demo_contacted
end
