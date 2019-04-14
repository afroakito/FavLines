class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
    # @title = Post.new
  end

  def create
    # @title = Post.new(title: params[:title])
    @post = Post.new(title: params[:title], content: params[:content])
    if @post.save
      flash[:notice] = "内容を投稿しました"
      redirect_to("/posts/index")
    else
      render("/posts/new")
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

end
