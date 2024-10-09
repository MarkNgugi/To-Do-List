class TodoListController < ApplicationController
  def Index
    @alltodo = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

end
 