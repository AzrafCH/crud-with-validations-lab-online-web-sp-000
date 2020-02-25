class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { scope %i[release_year artist_name], message: 'cannot be repeated by the same artist in the same year'}


end
