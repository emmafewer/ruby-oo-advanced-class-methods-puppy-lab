require 'pry'
class Dog
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.print_all
        puts self.all.map{|dog| dog.name}
    end

    def self.clear_all
        self.all.clear
    end
end

# binding.pry
# 0