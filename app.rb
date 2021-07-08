require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    product=params[:num1].to_i * params[:num2].to_i
    "#{product}"
  end


  get '/reversename/:name' do
    @name= params[:name]
    reversed = @name.reverse
  end

  get '/square/:number' do
    @number= params[:number]
    ((@number.to_i)**2).to_s
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end


  get '/:operation/:number1/:number2' do
      @operator = params[:operation]
      @num1= params[:number1].to_i
      @num2=params[:number2].to_i
      if @operator=="add"
        result= @num1 + @num2
        "#{result}"
      elsif @operator=="subtract"
        result= (@num1 - @num2)
        "#{result}"
      elsif @operator=="multiply"
        result= (@num1*@num2)
        "#{result}"
      elsif @operator=="divide" && @num2 !=0
        result= (@num1/@num2)
        "#{result}"
      else
        return
      end
    end
end