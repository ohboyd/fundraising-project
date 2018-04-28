require_relative "spec_helper"
require_relative "project"

describe Project do
  before do
    $stdout = StringIO.new
  end
  
  it "has an initial target funding amount" do 
    initial_target = 1000
    project = Project.new("abc", 100, initial_target)
    
    project.target.should == 1000
  end
  
  it "computes total funding outstanding as target minus funding amount" do
    initial_target = 1000
    project = Project.new("abc", 100, initial_target)
    
    project.outstanding_funds.should == initial_target - 100
  end
  
  it "increases funding by amount (25) when funds are added" do 
    initial_target = 1000
    project = Project.new("abc", 100, initial_target)
    project.add_funds(25).should == 100 + 25
  end 
  
  it "decreses funding by amount (15) when funds are subtracted" do
    initial_target = 1000
    project = Project.new("abc", 100, initial_target)
    
    project.sub_funds(15).should == (100 - 15)
  end
  
  it "has an default value of 0 for funding amount" do
    initial_target = 1000 
    project = Project.new("abc", nil, initial_target)
  
    project.funds == 0
  end
end