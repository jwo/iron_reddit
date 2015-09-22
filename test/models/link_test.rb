require 'test_helper'

class LinkTest < ActiveSupport::TestCase

  test "Creating an Upvote changes the vote_count" do

    the_link = Link.create title: "the title"
    Vote.create link: the_link
    Vote.create link: the_link
    Vote.create link: the_link
    the_link.reload

    assert_equal 3, the_link.vote_count

  end

end
