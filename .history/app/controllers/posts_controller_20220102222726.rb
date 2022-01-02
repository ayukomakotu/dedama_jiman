class PostsController < ApplicationController
    def create
        @post = current_user.posts.build(post_params)
        @acquired = @post.acquireds.build(acquired_params)
        if params[:post][:classification_id] == 1
            @acquired.unit = "発"
        else
            @acquired.unit = "枚"
        end

        if @post.save && @acquired.save
            flash[:success] = "Post created!"
            debugger
            redirect_to user_path(current_user)
        else
            render 'static_pages/home'
        end

    end

    private
        def post_params
            params.require(:post).permit(:content, :classification_id,
                                         :kind_id, :machine_id)
        end

        def acquired_params
            params.require(:acquired).permit(:number, :unit)
        end
        #画像追加時に :imageを追加

end
