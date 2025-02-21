class BlogsController < ApplicationController
    before_action :set_blog, only: [:show, :update, :destroy, :like]
  
    # GET /blogs
    def index
      @blogs = Blog.order(published_at: :desc)
      render json: @blogs, status: :ok
    end
  
    # GET /blogs/:id
    def show
      render json: @blog, status: :ok
    end
  
    # POST /blogs
    def create
      @blog = Blog.new(blog_params)
      @blog.likes ||= 0  # Default likes to 0 if not provided
  
      if @blog.save
        render json: @blog, status: :created
      else
        render json: { errors: @blog.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /blogs/:id
    def update
      if @blog.update(blog_params)
        render json: @blog, status: :ok
      else
        render json: { errors: @blog.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # DELETE /blogs/:id
    def destroy
      @blog.destroy
      render json: { message: "Blog deleted successfully" }, status: :ok
    end
  
    # PATCH /blogs/:id/like
    def like
      @blog.increment!(:likes)
      render json: { message: "Liked", likes: @blog.likes }, status: :ok
    rescue StandardError => e
      render json: { error: e.message }, status: :unprocessable_entity
    end
  
    private
  
    def set_blog
      @blog = Blog.find_by(id: params[:id])
      return render json: { error: "Blog not found" }, status: :not_found unless @blog
    end
  
    def blog_params
      params.require(:blog).permit(:title, :content, :published_at, :likes, :image_url)
    end
  end
  