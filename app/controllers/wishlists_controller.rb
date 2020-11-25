class WishlistsController < ApplicationController
  def new
    render :new
  end

  def create
    @group = Group.find(params[:group_id])
    user_group = UserGroup.find_by(group_id: params[:group_id], user_id: current_user.id)

    @wishlist = Wishlist.new(user_group_id: user_group, name: params[:wishlist]['name'])
    if @wishlist.save
      redirect_to group_path(@group)
    else
      render json: @wishlist.errors.full_messages, status: :unprocessable_entity
    end


  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:name)
  end
end
