class IdiomsController < ApplicationController
  def index
    @idiom = Idiom.order("RANDOM()").first
  end

  def new
    @idiom = Idiom.new
  end

  def create
    @idiom = Idiom.create(idiom_params)
    if @idiom.invalid?
      flash[:error] = '<strong>Say wuh!</strong> Input needed is between 10 to 100 characters, please try again.'
      redirect_to new_idiom_path
    else
      redirect_to root_path
    end
     
  end

  def learn
  end

  private

  def idiom_params
    params.require(:idiom).permit(:expression, :meaning)
  end

end