class Project
    attr_reader :title, :backer
    @@all = []
    def initialize(title)
        @title = title
        @backer = backer
        @@all << self
    end
    def add_backer(backer)
        added_backer1 = ProjectBacker.new(self, backer)
    end
    def self.all
        @@all
    end
    def backers
        b_projects = ProjectBacker.all.select do |b_backers|
            b_backers.project == self
        end
        b_projects.map do |b_project|
            b_project.backer
        end
    end
end