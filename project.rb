class Project
  #this makes objects (which are called projects) and prints their project name, current funds, and their target. Also has the functions necessary to recieve donations or debits to each project obj. that is created. 
  attr_reader :funds, :target
  attr_accessor :project
  
  def initialize(project, funds=0, target)
    @project = project.upcase
    @funds = funds
    @target = target
  end
  
  def to_s
    if @funds == @target 
      "Project #{@project} has met its goal of $#{@target}!!!"
    elsif @funds > @target
      "Project #{@project} has exceeded its goal of $#{@target} and now has $#{@funds}!!"
    else
      "Project #{@project} has $#{@funds} in funding towards a goal of $#{@target}."
    end
  end
  
  def add_funds(donation)
    @funds += donation
    puts "Project #{@project} recieved a $#{donation} donation and now has $#{@funds}! This means that #{distance_to_goal}"
  end
  
  def sub_funds(debit)
    @funds -= debit
    puts "Project #{@project} lost $#{debit}. Now, #{distance_to_goal}"
  end
  
  def distance_to_goal
    "it's $#{@target - @funds} from its goal of $#{@target}."
  end
  
  def outstanding_funds
    puts "We are $#{@target - @funds} from the goal!"
  end
  
end

# project1 = Project.new("xxx", 50, 150)
# project1.outstanding_funds
