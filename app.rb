require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
  	input = params[:name].reverse!
  	"#{input}"
  end 


  get '/square/:number' do 
  	input = params[:number].to_i
  	 "#{input **2}.to_s"

	end
	
  get '/say/:number/:phrase' do 
  	num =params[:number]
  	stringSpace = ""
    num.to_i.times do
      stringSpace += "#{params[:phrase]}\n"
    end
    stringSpace

	end  	




  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  	"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  		
  	end

  get '/:operation/:number1/:number2' do
  	if params[:operation] == "add"
  		add = params[:number1].to_i + params[:number2].to_i
  				"#{add}"
  	elsif params[:operation] == "subtract"
  		subt = params[:number1].to_i - params[:number2].to_i
  				"#{subt}"
  	elsif params[:operation] == "multiply"
  		mult = params[:number1].to_i * params[:number2].to_i
  				"#{mult}"
  	else params[:operation] == "divide"
  		div = params[:number1].to_i / params[:number2].to_i
  				"#{div}"
	end

	end

end