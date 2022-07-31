class CalendarsController < ApplicationController
  before_action : plan_params, if: :devise_controller


  # １週間のカレンダーと予定が表示されるページ
  def index
    getWeek
    @plan = Plan.new
  end

  # 予定の保存
  def create
    Plan.create(plan_params)
    redirect_to action: :index
  end

  private

  def plan_params
    params.require(:calendars).permit(:date, :plan, :week)
  end

  def get_Week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
    
    # Dateオブジェクトは、日付を保持しています。下記のように`.today.day`とすると、今日の日付を取得できます。
    @todays_date = Date.today
    -<<<<<<< HEAD
 
=======


   
>>>>>>> e5896c32f5dcd15d93da5507e4e061cba7eefa0c
    
<<<<<<< HEAD
    
>>>>>>> e5896c32f5dcd15d93da5507e4e061cba7eefa0c 

    @week_days = []

    plans = Plan.where(date: @todays_date..@todays_date + 6)

    7.times do |x|
      today_plans = []
      plans.each do |plan|
        today_plans.push(plan.plan) if plan.date == @todays_date + x
      end
 
      wday_num = Date.today.wday
      # wday_num = 今日の曜日の数値    ex) 今日が土曜日なら wday_num = 6

     if 
       wday_num = wday_num -7
     end
      

      days = { :month => (@todays_date + x).month, :date => (@todays_date+x).day, :plans => today_plans, :wdays => wday_num }
      @week_days.push(days)
    end
  end
end
