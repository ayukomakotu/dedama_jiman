class StaticPagesController < ApplicationController
    def home
        if user_signed_in?
            @post = current_user.posts.build
            @acquired = @post.acquireds.build
            @pmachine = Machine.all
        end
    end

    def help
    end
end
