class TodoListController < ApplicationController
  def Index
    @alltodo = Todo.all
  end
end
 