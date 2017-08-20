class ConcertsController < ApplicationController
  before_action :set_categories, :set_sidebar

  def index
    if params[:cat].present?
      cat = Category.find_by(name: params[:cat])
      @concerts = Concert.joins(:categories).where(categories: {id: cat.id})
    else
      @concerts = Concert.all
    end
    concerts_data = []
    @concerts.each do |concert|
      data = { "concert" => concert, "user" => User.find(concert.user_id) }
      concerts_data << data
    end
    gon.concerts = concerts_data
  end

  def show
    @concert = Concert.find(params[:id])
    concerts_data = []
    current_user.concerts.each do |concert|
      data = { "concert" => concert, "user" => User.find(concert.user_id) }
      concerts_data << data
    end
    gon.concerts = concerts_data

    @sidebar_show = true
  end

  private
  def set_categories
    @categories = Category.all
  end

  def set_sidebar
    @now_playing = Concert.now_playing
    @today_concert = Concert.today_playing
  end
end
