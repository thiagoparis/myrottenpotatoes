class Moviegoer < ActiveRecord::Base
  
  attr_accessible :uid, :provider, :name
  
  has_many :reviews
  has_many :movies, :through => :reviews

  def self.create_with_omniauth(auth)

    Moviegoer.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])

  end
 
end
