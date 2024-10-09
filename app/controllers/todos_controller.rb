class TodosController < ApplicationController
  def index
    @alltodo = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)

    if @todo.save
      redirect_to @todo
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:title,:description,:completed)
  end

end
 