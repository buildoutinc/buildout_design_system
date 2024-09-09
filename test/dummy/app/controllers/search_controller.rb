class SearchController < ApplicationController
  def search
    render json: ApplicationHelper::MOCK_DATA.filter { |data| data[:name].downcase.include?(params[:name]) }
  end
end
