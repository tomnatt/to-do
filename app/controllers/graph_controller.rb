class GraphController < ApplicationController
  def index
    @tasks = Task.all
  end
end
