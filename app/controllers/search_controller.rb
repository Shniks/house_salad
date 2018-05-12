class SearchController < ApplicationController
  def index
    @members = MemberService.new(state: params[:state]).members
  end
end
