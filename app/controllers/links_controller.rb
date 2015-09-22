class LinksController < ApplicationController
  def index
    @links = Link.order("vote_count desc")
  end

  def upvote
    @link = Link.find params[:id]
    # upvote this thing
    # @link.upvote!
    Vote.create link: @link
    redirect_to root_path
  end
end
