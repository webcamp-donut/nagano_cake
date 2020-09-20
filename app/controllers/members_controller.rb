class MembersController < ApplicationController
  before_action :set_member
  before_action :authenticate_member!

  def show
  	@member = current_member
  end

  def edit
  	@member = current_member
  end

    def update
    @member = current_member
    if @member.update(member_params)
      redirect_to member_path
    else
      render :edit
    end
  end

  def confirmation
  end

  def withdraw
    @member = current_member
    @member.update(withdrawal_status: 2)
    reset_session
    redirect_to new_member_registration_path
  end


   private

   def set_member
    @member = current_member
  end

  def member_params
    params.require(:member).permit(:first_name, :last_name, :kana_first_name, :kana_last_name, :postal_code, :address, :email, :phone, :withdrawal_status)
  end
end