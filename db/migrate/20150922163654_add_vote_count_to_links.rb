class AddVoteCountToLinks < ActiveRecord::Migration
  def change
    change_table :links do |t|
      t.integer :vote_count, default: 0
    end
  end
end
