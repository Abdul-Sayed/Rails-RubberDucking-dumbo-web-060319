class DucksController < ApplicationController
  def index
    @ducks = Duck.all
  end

  def show
    find_duck
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    Duck.create(duck_params)
    redirect_to ducks_path
  end

  def edit
    find_duck
  end

  def update
    find_duck.update(duck_params)
    redirect_to duck_path(@duck.id)
  end

  private

  def find_duck
    @duck = Duck.find(params[:id])
    # @duck = Duck.find(params[:student_id])
  end

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
end
