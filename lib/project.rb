class Project
    attr_accessor :title
    def initialize(title)
        self.title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_array = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
        backer_array.collect do |attributes|
            attributes.backer
        end
    end
end