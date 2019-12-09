class SearchController < ApplicationController
  def index
    render locals: {
      member_results: SearchMember.new(params[:house])
    }
  end
end
