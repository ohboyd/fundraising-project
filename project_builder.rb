
require_relative 'project'

class Project_builder
  attr_reader :project_acro #this is so I can use puts project_acro 
  attr_accessor :projects
  def initialize(project_acro)
    @project_acro = project_acro.capitalize
    @projects =[]
  end
  
  def add_project(name)
    @projects << name
    puts "\nProject #{name.project} has been added to the #{@project_acro} portfolio."
  end
  
  def remove_project(removed_acro)
    puts "\nThe #{removed_acro.project} project has been removed from #{@project_acro}"
    self.projects = projects.select{ |item| item != removed_acro }
  end
  
  def fundraising_round
    puts "\nThere are #{@projects.length} portfolio projects this round.\n\n"
    @projects.each { |item| item.add_funds(50) }
    @projects.each { |item| item.sub_funds(10) }
  end

end
