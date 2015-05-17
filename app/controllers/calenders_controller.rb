class CalendersController < ApplicationController
  def new
  	@calender=Calender.new
  end

  def create
  	 @calender=Calender.new(calender_params)
     @calender.messowner_id.member_id = 
     
     @calender.save
  end



  private
   

   def calender_params
      params.require(:calender).permit(:messowner_id, :member_id, :cal_date, :cal_no_tiffin, :cal_rate, :cal_time, :cal_old)
    end
end
