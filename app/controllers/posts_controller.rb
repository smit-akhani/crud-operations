class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @posts = Post.find(params[:id])
    end

    def new
        @posts = Post.new
    end

    def create
        @posts = Post.new(validateParam)
        @posts.save
        redirect_to index_path
    end

    def edit
        @posts = Post.find(params[:id])
    end

    def update
        @posts = Post.find(params[:id])
        @posts.update(validateParam)
        redirect_to index_path
    end

    def destroy
        @posts = Post.find(params[:id])
        @posts.delete
        redirect_to index_path
    end

    private
        def validateParam
            params.permit(:title,:description,:status)
        end
end
