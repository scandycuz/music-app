# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  album_type :string           not null
#  band_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
