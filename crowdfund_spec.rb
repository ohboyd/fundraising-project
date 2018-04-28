require_relative "spec_helper"
require_relative "project"

describe Project do
  before do
    $stdout = StringIO.new
  end
  
  it "has an initial target funding amount" do 
    initial_target = 1000
    project = Project.new("abc", nil, initial_target)
    
    project.target.should == 1000
  end
  
  it "computes total funding outstanding as target minus funding amount" do
    initial_target = 1000
    project = Project.new("abc", nil, initial_target)
    
    project.outstanding_funds.should == "We are $1000 from the goal!"
  end
  
  it "increases funding by amount (25) when funds are added"
  
  it "decreses funding by amount (15) when funds are subtracted"
  
  it "has an default value of 0 for funding amount"
  
end