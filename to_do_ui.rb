require './lib/to_do'
require './lib/list'

@list = []
@new_list

def main_menu
  loop do
    puts "Press 'a' to add a task or 'l' to list all of your tasks."
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'a'
      add_task
    elsif main_choice == 'l'
      list_tasks
    elsif main_choice == 'x'
      puts "Good-bye!"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end

def add_list
  puts "Enter the name of your list."
  user_list = gets.chomp
  @new_list = List.new(user_list)
end

def add_task
  puts "Enter a description of the new task:"
  task_description = gets.chomp
  new_task = Task.new(task_description)
  @list << Task.new(task_description)
  puts "Task added.\n\n"
  @new_list.add_task(new_task)
end

def list_tasks
  puts "Here are all of your tasks:"
  @list.each do |task|
    puts tasks.todo
  end
  puts "\n"
end

main_menu
