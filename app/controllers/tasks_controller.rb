class TasksController < ApplicationController
  def index
    @tasks = [
      OpenStruct.new(title: 'Write docs', urgent: true, important: true),
      OpenStruct.new(title: 'Pay bills', urgent: true, important: false),
      OpenStruct.new(title: 'Plan vacation', urgent: false, important: true),
      OpenStruct.new(title: 'Watch movie', urgent: false, important: false)
    ]
  end

  def eisenhower
    index
  end
end
