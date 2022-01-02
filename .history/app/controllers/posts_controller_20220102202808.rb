class PostsController < ApplicationController
    def new
    end

    def create
        
    end

    private
        def post_params
            params.require(:post).permit(:content, classification,
                                         :kind)
        end
        #画像追加時に :imageを追加
    end
end
