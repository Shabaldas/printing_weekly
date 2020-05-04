class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all.order("published_at DESC").page(params[:page])
  end

  def show
    @blog_post = BlogPost.find_by(id: params[:id])
  end
end