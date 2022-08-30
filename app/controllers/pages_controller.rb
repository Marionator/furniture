class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @most_recent_items = Item.last(5)
  end
end
