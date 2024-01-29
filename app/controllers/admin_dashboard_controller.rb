class AdminDashboardController < ApplicationController
  before_action :authenticate_admin!
  def index
    redirect_to admin_industry_path
  end
end
