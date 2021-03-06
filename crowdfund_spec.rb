require_relative "spec_helper"
require_relative "project"

describe Project do
  before do
    $stdout = StringIO.new
  end
  
  before do
    @initial_target = 1000
    @project = Project.new("abc", 100, @initial_target)
  end
  
  it "has an initial target funding amount" do 
    @project.target.should == 1000
  end
  
  it "computes total funding outstanding as target minus funding amount" do
    @project.outstanding_funds.should == @initial_target - 100
  end
  
  it "increases funding by amount (25) when funds are added" do 
    @project.add_funds(25).should == 100 + 25
  end 
  
  it "decreses funding by amount (15) when funds are subtracted" do
    @project.sub_funds(15).should == (100 - 15)
  end
  
  it "has a default value of 0 for funding amount" do 
    
    project = Project.new("abc", nil, @initial_target)
  
    project.funds.should == 0
  end
end