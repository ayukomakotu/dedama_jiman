class StaticPagesController < ApplicationController
    def home
        if user_signed_in?
            @post = current_user.posts.build
            @acquired = @post.acquireds.build
            @slot = Classification.first.machines.all
            debugger
        end
    end

    def help
    end
end
