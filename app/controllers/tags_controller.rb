class TagsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @tag = @post.tags.create(tag_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @tag = @post.tags.find(params[:id])
    @tag.destroy
    redirect_to post_path(@post)
  end

  private
    def tag_params
      params.require(:tag).permit(:content)
    end
end
