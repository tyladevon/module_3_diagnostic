class SearchController < ApplicationController
  def index
    render locals: {
      find_members: SearchMember.new
    }
  end
end
