class WishlistsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])

    user_group = UserGroup.find_by(group_id: params[:group_id], user_id: current_user.id)
    wishlist = Wishlist.create(user_group_id: user_group.id, name: params[:wishlist]['name'])

    redirect_to group_path(@group)
  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:name)
  end
end
