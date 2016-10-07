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

class Album < ActiveRecord::Base
  validates :name, :album_type, presence: true

  has_many :tracks

  belongs_to :band
end
