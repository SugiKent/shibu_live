class Mypage::ConcertsController < MypageController
  def index
    @concerts = current_user.concerts.all
  end

  def new
    @concert = Concert.new()
  end

  def create
    @concert = Concert.new(concert_params)
    if @concert.save
      flash[:notice] = "ライブを登録しました！"
      redirect_to mypage_concerts_path
    else
      flash[:alert] = "ライブを登録できませんでした。"
      redirect_to mypage_concerts_path
    end
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private

  def concert_params
    params.require(:concerts).permit(:title, :start_at, :end_at, :user_id, :address, :comment, category_ids: [])
  end
end
