require "test_helper"

class VotingLinksTest < Capybara::Rails::TestCase

  test "upvote works" do

    # setup

    link = Link.create title: "22 Problems Only Celebrities Will Understand"
    link2 = Link.create title: "The 14 Most Courageous Stories From The NYC Marathon"
    # doing things

    visit root_path


    # take a screenshot
    # save_and_open_page

    find("#link-#{link2.id} .upvote").click

    within("#link-#{link.id}") do
      find(".upvote").click
    end

    # open up and see what's up
    # binding.pry

    # assertion

    within("#link-#{link.id}") do
      assert_content page, "1"
    end

    link.reload
    link2.reload
    assert_equal 1, link.vote_count
    assert_equal 1, link2.vote_count


  end

end
