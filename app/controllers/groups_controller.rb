class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @users = @group.users

    @wishlists = Wishlist.where(group_id: params[:id])
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:notice] = "You've successfully added a group"
    else
      flash[:alert] = "Sorry bro, try again."
    end
    redirect_to @group
  end

  def update
    @group = Group.find(params[:id])

    if @group.update(group_params)
      redirect_to @group
    else
      render 'edit'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :invite_code)
  end
end
