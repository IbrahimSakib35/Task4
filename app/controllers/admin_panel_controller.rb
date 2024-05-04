# app/controllers/admin_panel_controller.rb

class AdminPanelController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def user_management
    @users = User.all
  end

  def block_user
 
    id=params[:id]
    User.unscoped.where(id: id).update_all(status: "blocked") # Block the user
    redirect_to admin_panel_user_management_path
  end

  def unblock_user
    id=params[:id]
    User.unscoped.where(id: id).update_all(status: "active") # Block the user
    redirect_to admin_panel_user_management_path

  end

  def delete_user
    id=params[:id]
    User.unscoped.where(id: id).destroy_all # Block the user
    redirect_to admin_panel_user_management_path
  end
  
end
