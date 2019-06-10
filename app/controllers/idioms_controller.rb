class IdiomsController < ApplicationController
  def index
    @idiom = Idiom.order("RANDOM").first
  end
end