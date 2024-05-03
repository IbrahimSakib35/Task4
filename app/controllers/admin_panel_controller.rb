# app/controllers/admin_panel_controller.rb

class AdminPanelController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def user_management
    @users = User.all
  end

  def block_user
    user = User.find(params[:id])
    user.update(status: false)
    redirect_to admin_panel_user_management_path
  end

  def unblock_user
    user = User.find(params[:id])
    user.update(status: true)
    redirect_to admin_panel_user_management_path
  end

  def delete_user
    user = User.find(params[:id])
    user.destroy
    redirect_to admin_panel_user_management_path
  end
end
