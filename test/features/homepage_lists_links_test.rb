require "test_helper"

class HomepageListsLinksTest < Capybara::Rails::TestCase
  test "Homepage lists links in db" do

    link = Link.create title: "The 31 Most Disturbing Emojis Of This Year"

    visit root_path

    assert_content page, link.title
  end
end
