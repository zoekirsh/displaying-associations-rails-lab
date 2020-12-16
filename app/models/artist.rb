class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    Song.all.select {|song| song.artist == self}.count
  end
end
