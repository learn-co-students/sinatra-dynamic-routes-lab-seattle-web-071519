require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @concat = ""
    @number.times do
       @concat += "#{params[:phrase]}\n"
    end
    "#{@concat}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    case params[:operation]
    when "add"
      "#{@num1+@num2}\n"
    when "subtract"
      "#{@num1-@num2}\n"
    when "multiply"
      "#{@num1*@num2}\n"
    when "divide"
      "#{@num1/@num2}"
    end
  end
end