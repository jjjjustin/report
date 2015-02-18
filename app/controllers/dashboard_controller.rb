class DashboardController < ApplicationController
  def index
    @title = "People, Pets, and Meals  |  Dashboard"
    @users = User.all
  end

  def reports
  end
end
