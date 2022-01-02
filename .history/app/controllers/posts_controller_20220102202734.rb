class PostsController < ApplicationController
    def new
    end

    def create
        @post = current_user.posts.build(post_params)
        if　@post.save
            flash[:success] = "Post created!"
            redirect_to user_path(current_user)
        end
    end

    private
        def post_params
            params.require(:post).permit(:content, classification,
                                         :kind)
        end
        #画像追加時に :imageを追加
end
