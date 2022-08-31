class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @most_recent_items = Item.last(2)
  end
end
