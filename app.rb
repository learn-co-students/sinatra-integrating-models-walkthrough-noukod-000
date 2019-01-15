require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  
    get '/' do
        erb :index
    end
  
    post '/' do
        @analyzed_text = TextAnalyzer.new(text_from_user)
        erb :results
    end
end
