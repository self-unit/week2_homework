require('minitest/autorun')
require('minitest/rg')
require_relative('../song')


class SongTest < MiniTest::Test

  def setup
    @song_1 = Song.new("Sweet Home Alabama")
  end

  def test_song_has_name
    assert_equal("Sweet Home Alabama", @song_1.name)
  end

end
