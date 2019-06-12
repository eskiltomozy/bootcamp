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
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to new_idiom_path 
  end

  def learn
  end

  private

  def idiom_params
    params.require(:idiom).permit(:expression, :meaning)
  end

end