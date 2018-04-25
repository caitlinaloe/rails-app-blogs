class User
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def greet
        return "sup #{name}"
    end

end
