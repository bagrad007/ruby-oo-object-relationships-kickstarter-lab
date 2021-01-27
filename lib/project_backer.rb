class ProjectBacker
    attr_accessor :project, :backer
    @@all = []
    def initialize(project, backer)
        self.project = project
        self.backer = backer
        self.class.all << self        
    end

    def self.all
        @@all
    end

end