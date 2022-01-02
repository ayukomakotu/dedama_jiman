class PostsController < ApplicationController
    before_action :authenticate_user!
    def create
        @post = current_user.posts.build(post_params)
        if　@post.save
            flash[:success] = "Post created!"
            redirect_to root_url
        end
    end

    private
        def post_params
            params.require(:post).permit(:content, classification_id,
                                         :kind_id, machine_id)
        end
        #画像追加時に :imageを追加

end
