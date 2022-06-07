class PostController < ApplicationController
  def show
    @posts = Post.paginate(page: params[:page], per_page: 10)
    @allowed_to_delete = true 
  end

  def new
  end

  def delete_post
    @post = Post.find_by_id(params[:id])
    if @post.present?
      @post.destroy
    end
    redirect_to root_path
  end

  def create_post
    user_id = rand(1..10)
    post = Post.new(title: params[:title], body: params[:body],user_id: user_id)
    if post.save
      redirect_to root_path
    else
      redirect_to post_new_path
    end
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    @post = Post.find_by_id(params[:id])
    post_params = {title: params[:title], body: params[:body]}
    @post.update(post_params)
    redirect_to root_path
  end

  def api_data_for_frontend
    @posts = Post.select(:id, :title, :created_at)
    render json: {posts: @posts}
  end
end
