class Link < ActiveRecord::Base
  has_many :votes

  def vote_count
    votes.count    
  end
end
