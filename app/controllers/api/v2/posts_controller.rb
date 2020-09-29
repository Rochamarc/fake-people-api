module Api 
  module V2
    class PostsController < ApplicationController
      before_action :set_post, only: [:show, :update, :destroy]

      # GET /posts
      def index
        @posts = Post.all

        render json: @posts.sort_by{ |el| el[:likes]}.reverse
      end

      # GET /posts/1
      def show
        render json: @post
      end

      # POST /posts
      def create
        @post = Post.new(post_params)

        if @post.save
          render json: @post, status: :created, location: @post
        else
          render json: @post.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /posts/1
      def update
        if @post.update(post_params)
          render json: @post
        else
          render json: @post.errors, status: :unprocessable_entity
        end
      end

      # DELETE /posts/1
      def destroy
        @post.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_post
          @post = Post.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def post_params
          params.require(:post).permit(:title, :body, :likes, :user_id)
        end
    end
  end 
end
