class UsersController < ApplicationController
  before_filter :authenticate_user!, only: [:index]

  def index
  	@users = User.paginate(page: params[:page])
  end

  def show
  	@user = User.find(params[:id])
  end
end
