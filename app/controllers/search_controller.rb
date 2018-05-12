class SearchController < ApplicationController
  def index
    @members = MemberService.new(params[:state]).members
  end
end
