RSpec.describe "doubles challenge" do
  it "creates a sophisticated double" do
    task_list = double :list, count: 1,
                              clear: :success
    task = double :task # ...
    allow(task_list).to receive(:add).with(task)
    allow(task_list).to receive(:list).and_return([task])
    # Don't edit below
    task_list.add(task)
    expect(task_list.list).to eq [task]
    expect(task_list.count).to eq 1
    expect(task_list.clear).to eq :success
  end
end

# when count is called on task_list it returns 1
# when clear is called on task_list it returns :success
# when add is called on task_list with task it returns nothing
# when list is called on task_list it returns task