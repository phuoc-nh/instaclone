class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    if !@like.save
      flash[:alert] = "You have already liked this post."
      redirect_to post_path(@like.post)
    end
    redirect_to root_path
  end

  def destroy
    # debugger
    puts "Destroying like with ID: #{params[:id]}"
    @like = current_user.likes.find(params[:id])
    @like.destroy if @like
    redirect_to root_path
  end

  def like_params
    params.require(:like).permit(:post_id)
  end
end
