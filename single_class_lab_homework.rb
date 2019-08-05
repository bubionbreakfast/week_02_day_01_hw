class Student

    attr_reader(:name, :cohort)
    attr_writer(:name, :cohort)

    def initialize(name, cohort)
        @name = name
        @cohort = cohort
    end

    def talk()
      return 'I can talk!'
    end

    def favourite_language(lang)
      return "I love #{lang}!"
    end

end
