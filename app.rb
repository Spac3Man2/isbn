require 'sinatra'
require_relative "isbn.rb"

get '/' do
       'Hello World!' + ' ' + 
       'Now put this in your pipe & smoke it!'
    erb :isbn_input
end

post '/isbnnum' do  
	#num = params['ISBN']
	num = params[:ISBN]
	pgm_results = 
	    valid_isbn?(num)
	"Answer is #{
	 pgm_results}"    
end