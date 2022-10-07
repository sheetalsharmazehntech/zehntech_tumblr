class PostsController < ApplicationController

def index
end

def new
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
