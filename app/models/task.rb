class Task < ActiveRecord::Base
  # Determine if the task is urgent based on the due date
  def urgent?
    due.present? && due <= 2.days.from_now
  end

  # Determine if the task is important based on the importance score
  def important?
    importance.present? && importance > 5
  end

  # Map the task to one of the four Eisenhower matrix quadrants
  # 1: important & urgent
  # 2: important & not urgent
  # 3: not important & urgent
  # 4: not important & not urgent
  def quadrant
    if important? && urgent?
      1
    elsif important?
      2
    elsif urgent?
      3
    else
      4
    end
  end
end
