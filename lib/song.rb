class Song
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end
end