require_relative 'project'
require_relative 'project_builder'

project1 = Project.new("abc", 20, 1000)
project2 = Project.new("lmn", 150, 999)
project3 = Project.new("xyz", 366, 666)

portfolio1 = Project_builder.new("nonprofits")
portfolio1.add_project(project1)
portfolio1.add_project(project2)

portfolio1.fundraising_round
portfolio1.add_project(project3)

portfolio1.fundraising_round

portfolio1.remove_project(project2)
portfolio1.fundraising_round


