  class Admins::MembersController < ApplicationController
    before_action :authenticate_admin!
    def edit
      @member = Member.find(params[:id])
    end

    def update
      @member = Member.find(params[:id])
      if @member.update(member_params)
        redirect_to admins_member_path(@member)
      else
        render :edit
      end
    end

    def index
      @members = Member.page(params[:page]).reverse_order
    end

    def show
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:first_name, :last_name, :kana_first_name, :kana_last_name, :postal_code, :address, :email, :phone, :withdrawal_status)
    end

  end
