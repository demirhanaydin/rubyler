class Post < ActiveRecord::Base
  
  belongs_to :user
  
  before_save :set_title_in_url
  
  def to_param
    self.title.parameterize
  end
  
  def to_s
    self.title
  end
  
  def set_title_in_url
    self.title_in_url = self.to_param
  end
  
end