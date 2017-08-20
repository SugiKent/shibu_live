class HomesController < ApplicationController

  before_action :require_signout

  def top
    @concerts = Concert.all
  end

  private
  def require_signout
    if current_user.present?
      redirect_to concerts_path
    end
  end
end
