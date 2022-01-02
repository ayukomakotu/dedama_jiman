class StaticPagesController < ApplicationController
    def home
        if user_signed_in?
            @post = current_user.posts.build
            @acquired = @post.build
        end
    end

    def help
    end
end
