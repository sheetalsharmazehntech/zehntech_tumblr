class PostsController < ApplicationController

def index
    @posts = Post.all.order('created_at DESC')
end

def new
end  

def show
    @post = Post.find(params[:id])
end

 def create
    @post = Post.new(post_params)
        respond_to do |f|
        if @post.save
            redirect_to @post, notice: "Your post has been saved"
        else
            render :create
        end
    end
 end

  private

def post_params
    params.require(:post).permit(:title, :body)
end


end
