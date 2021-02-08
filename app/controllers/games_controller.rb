require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = 9.times.map { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word]
    @letters = params[:letters]

    #  vérifier que chaque lettre du mot est utilisée dans letters, mais pas plus d'une fois
    if @word.split.include? (@letters)
    @url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    @parseurl = open(@url).read
    @trueurl = JSON.parse(@parseurl)
    @found = @trueurl["found"]
    else
    end
  end
end
