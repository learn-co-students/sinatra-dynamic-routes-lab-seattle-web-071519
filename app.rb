require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name_reversed = params[:name].reverse
  end

  get '/square/:number' do 
    squared_number = params[:number].to_i*params[:number].to_i
    squared_number.to_s
  end

  get '/say/:number/:phrase' do 
    numbered = ""
    @number = params[:number]
    @phrase = params[:phrase]
    @number.to_i.times do
     numbered += @phrase
    end
    numbered

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " +  params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      number = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      number = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      number = params[:number1].to_i*params[:number2].to_i
    when "divide"
      number = params[:number1].to_i/params[:number2].to_i
    end 
    number.to_s
  end 

end