class PostsController < ApplicationController
    def new
    end

    def create
        @post = current_user.posts.build(post_params)
        if　@post.save
            flash[:success] = "Post created!"
            redirect_to user_path(current_user)
        else
            render 'static_pages/home'
        end
    end
end
