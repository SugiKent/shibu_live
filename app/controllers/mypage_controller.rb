class MypageController < ApplicationController
  before_action :require_login, :set_categories

  private
  def require_login
    if current_user.nil?
      redirect_to concerts_path, notice: 'ログインが必要です。'
    end
  end

  def set_categories
    @categories = Category.all
  end

end
