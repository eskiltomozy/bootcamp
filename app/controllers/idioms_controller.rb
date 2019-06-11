class IdiomsController < ApplicationController
  def index
    @idiom = Idiom.order("RANDOM()").first
  end

  def new
    @idiom = Idiom.new
  end
  
  def create
    Idiom.create(idiom_params)
    redirect_to root_path
  end

  private

  def idiom_params
    params.require(:idiom).permit(:expression, :meaning)
  end
end