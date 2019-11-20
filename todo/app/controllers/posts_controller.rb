class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:messages] = "successfully created post"
      redirect_to post_path(@post.id)
    else
      render action: 'new'
    end
  end

  def edit
    @post = Post.find(params['id'])
  end

  def update
    @post = Post.find(params['id'])
    if(@post.update_attributes(post_params))
      flash[:messages] = "successfully updated post"
      redirect_to post_path(@post)
    else
      render action :edit
    end
  end

  def destroy
    @post = Post.find(params['id'])
    if(@post.destroy)
      flash[:messages] = "successfully destroyed post"
    end
    redirect_to posts_path
  end

  def show
    @post = Post.find(params['id'])
  end

  private 
  
  def post_params
    params.require(:post).permit(:name, :description)
  end

end
