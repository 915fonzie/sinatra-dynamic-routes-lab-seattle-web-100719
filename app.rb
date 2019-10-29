require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    multiple_phrases = ""
    #phrase_corrected = params[:phrase].gsub("%20"," ")
    params[:number].to_i.times{multiple_phrases = multiple_phrases + params[:phrase]}
    multiple_phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    total = 0
    if params[:operation] == "add"
      total = params[:number1].to_i + params[:number2].to_i
    end
    if params[:operation] == "subtract"
      total = params[:number2].to_i - params[:number1].to_i
    end
    if params[:operation] == "multiply"
      total = params[:number1].to_i * params[:number2].to_i
    end
    if params[:operation] == "divide"
      total = params[:number1].to_i / params[:number2].to_i
    end
    total.to_s
  end
end