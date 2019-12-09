class SearchController < ApplicationController
  def index
    render locals: {
      find_members: SearchMember.new(house)
    }
  end
end
