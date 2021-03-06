class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_messowner! 
  # GET /members
  # GET /members.json
  def index
    @members = current_messowner.members
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    @messowner=current_messowner
    
    respond_to do |format|
      if @member.save
        @messowner.members << @member
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|

      unless @member.messowner_ids.include?(current_messowner.id)
         format.html { render :edit, notice: 'The updating member is not in your list.' }
      end
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    current_messowner.members.delete(@member)
    redirect_to members_url
    # @member.destroy
    # respond_to do |format|
    #   format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:mem_first_name, :mem_last_name, :mem_mobile_no, :mem_alt_mobile_no, :email, :mem_address)
    end
end
