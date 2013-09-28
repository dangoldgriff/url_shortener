class Url < ActiveRecord::Base
  validates :long_url, :presence => true
  after_create :create_short_url

private 

  def create_short_url
    update(:short_url => "short" + self.id.to_s)
  end
  
end  
