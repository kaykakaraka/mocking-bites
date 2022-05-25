require 'task_formatter'

RSpec.describe TaskFormatter do
  it "formats a complete task" do
    fake_task = double :task, complete?: true,
                              title: "My Task"
    task_formatter = TaskFormatter.new(fake_task)
    expect(task_formatter.format).to eq "- [x] My Task"
  end

  it "formats an incomplete task" do
    fake_task = double :task, complete?: false,
                              title: "My Task"
    task_formatter = TaskFormatter.new(fake_task)
    expect(task_formatter.format).to eq "- [ ] My Task"
  end
end