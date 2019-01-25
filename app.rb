require 'sinatra'
require './lib/Game.rb'

get '/' do
    @@game = Game.new
    @palabra=@@game.scrambled_word
    erb :game
end

post '/validar' do
    palabra = params[:palabra_usuario]
    res = @@game.isWordCorrect palabra
    @resultado = ""
    if res
        @resultado = "Respuesta correcta"
    end

    erb :result
end