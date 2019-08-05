require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    sqrd = @num.to_i * @num.to_i
    "#{sqrd}"
  end

  get '/say/:number/:phrase' do
    final_string = ""
    params[:number].to_i.times do
      final_string += "#{params[:phrase]}"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    case params[:operation]
    when "add"
      (n1 + n2).to_s
    when "multiply"
      (n1 * n2).to_s
    when "subtract"
      (n1 - n2).to_s
    when "add"
      (n1 + n2).to_s
    when "divide"
      (n1 / n2).to_s
    end
  end

end