# frozen_string_literal: true

# class Task
class Task
  attr_reader :task_id
  attr_accessor :task_title
  @@total_tasks = 0

  def self.total_tasks
    @@total_tasks
  end

  def initialize(title)
    @task_id = @@total_tasks
    @@total_tasks += 1

    @task_title = title
  end
end

# class
class TaskManager
  @@running_task = {}
  @@paused_task = {}

  def initialize; end

  def run_task(task)
    @@running_task[task.task_id] = task
  end

  def pause_task(task_id)
    @@paused_task[task_id] = @@running_task.delete(task_id)
  end

  def show_running_task
    space_count = 10
    puts '----------------------------------------------------'
    puts 'ID'.ljust(space_count) << 'Title'

    @@running_task.each do |key, value|
      puts "#{key}".ljust(space_count) << "#{value.task_title}"
    end

    puts '----------------------------------------------------'
  end

  def finish_task(task_id)
    @@running_task.delete(task_id)
  end
end

# main
task_manager = TaskManager.new

loop do
  puts '1. Create and Run a task'
  puts '2. Pause a task'
  puts '3. Finish a task'
  puts '4. Show all task'
  puts 'Q. Quit'

  print 'Please enter command: '
  command = gets.chomp

  break if command == 'Q' || command == 'q'

  case command
  when '1'
    print 'Please enter task title: '
    title = gets.chomp
    task = Task.new(title)
    task_manager.run_task(task)
  when '2'
    print 'Enter task id: '
    t_id = gets.to_i

    task_manager.pause_task(t_id)
  when '3'
    print 'Enter task id: '
    t_id = gets.to_i

    task_manager.finish_task(t_id)

  when '4'
    task_manager.show_running_task

  end
end
