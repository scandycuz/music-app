# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  track_type :string           not null
#  lyrics     :text
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ActiveRecord::Base
  validates :title, :track_type, presence: true

  belongs_to :album
end
