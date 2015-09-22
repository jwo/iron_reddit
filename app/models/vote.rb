class Vote < ActiveRecord::Base
  belongs_to :link, counter_cache: :vote_count
end
