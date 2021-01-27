require 'pry'
class Backer
    attr_accessor :name
    def initialize(name)
        self.name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_array = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        project_array.collect do |attributes|
            attributes.project
        end
    end
end