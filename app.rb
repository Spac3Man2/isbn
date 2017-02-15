require 'sinatra'

require_relative "isbn.rb"

get '/' do

     #  'Hello World!' + ' ' + 

     #  'Now put this in your pipe & smoke it!'

    erb :isbn_num

end



post '/isbn_num' do  

	#num = params['ISBN']

	num = params[:ISBN]

	"#{@pgm_results}"    

end