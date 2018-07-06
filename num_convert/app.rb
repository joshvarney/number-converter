require 'sinatra'
require_relative 'num_conversion.rb'
enable :sessions

get '/' do 
	erb :first_page
end

post '/num' do
int = params[:int].to_i
session[:conv_num] = num_conv(int)
redirect '/results?int=' + "#{int}" 
	end
	get '/results' do 
		int = params[:int]
		erb :results, locals:{int: int, conv_num: session[:conv_num]} 
	end
