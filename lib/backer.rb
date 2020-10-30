class Backer
    attr_reader :name
def initialize(name)
    @name = name
end
def back_project(project)
    new_bp = ProjectBacker.new(project, self)
end
def backed_projects
    project_backers = ProjectBacker.all.select do |back_projects|
        back_projects.backer == self
    end
    project_backers.map do |project_backers|
        project_backers.project
    end
end
end