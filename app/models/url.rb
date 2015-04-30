require 'faker'

class Url < ActiveRecord::Base

  validates :url, presence: true
  validates :shortened_url, uniqueness: true

  def shorten
    self.update(shortened_url: "ed.ly/#{Faker::Lorem.word}")
  end

end
