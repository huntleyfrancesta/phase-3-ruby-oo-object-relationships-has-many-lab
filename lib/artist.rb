class Artist
    attr_accessor :name, :songs

    def self.song_count 
        Song.all.length
    end

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end
end