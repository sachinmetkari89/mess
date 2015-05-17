class CalendersController < ApplicationController
  before_action :set_member
  def new

  	@calender=@member.calenders.build()
  	@url=member_calenders_path(@member)
  end

  def edit

	@calender=Calender.find(params[:id])
  	@url=member_calender_path(@member,@calender)  	
  	render "new"
  end

  def index
  	@calenders = @member.calenders
  end

  def destroy
    @calender=Calender.find(params[:id])
    @calender.destroy
    redirect_to member_calenders_path(@member)
    
  end

  def create
  	  @calender=@member.calenders.build()
  	  @calender.cal_no_tiffin = params[:calender][:cal_no_tiffin]
  	  @calender.rate = current_messowner.messowner_rate_per_tiffin
  	  @calender.time = params[:calender][:time]
  	  @calender.messowner_id = current_messowner.id
  	  @calender.save!
  	  redirect_to member_calenders_path(@member)

  end

  def update
	@calender=Calender.find(params[:id])
	@calender.cal_no_tiffin = params[:calender][:cal_no_tiffin]
	@calender.rate = current_messowner.messowner_rate_per_tiffin
  	@calender.save!
  	redirect_to member_calenders_path(@member)

  end

  def set_member
  	@member=Member.find(params[:member_id])
  	
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
