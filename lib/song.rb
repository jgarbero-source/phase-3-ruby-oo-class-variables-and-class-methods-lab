require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@genres << @genre
        @@artists << @artist
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres
        @@genres.each_with_object([]) do |e, arr|
            arr << e unless arr.include?(e)
        end
    end

    def self.artists
        @@artists
        @@artists.each_with_object([]) do |e, arr|
            arr << e unless arr.include?(e)
        end
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end