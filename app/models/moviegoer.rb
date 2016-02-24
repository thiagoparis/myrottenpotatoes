class Moviegoer < ActiveRecord::Base
  
  attr_accessible :uid, :provider, :name
  
  has_many :reviews

  def self.create_with_omniauth(auth)

    Moviegoer.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])

  end
 
end
