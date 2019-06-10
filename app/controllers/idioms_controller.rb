class IdiomsController < ApplicationController
  def index
    @idiom = Idiom.first
  end
end