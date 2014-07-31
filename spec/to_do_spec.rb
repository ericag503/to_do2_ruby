require 'rspec'
require 'to_do'
require 'list'

describe Task do
it 'is initialized with a description' do
  test_task = Task.new('scrub the zebra')
  expect(test_task).to be_an_instance_of Task
end

it 'a new list is initialized with Home as @list_name' do
  test_list = List.new('Home')
  expect(test_list.list_name).to eq("Home")
end


end

  # it("starts out with an empty list of tasks") do
  #   test_list = List.new("School stuff")
  #   test_list.tasks.should eq []
  # end

  # it("can add tasks") do
  #   test_list = List.new("School stuff")
  #   test_task = Task.new("Learn Ruby")
  #   test_list.add_task(test_task)
  #   test_list.tasks.should eq [test_task]
  # end
