class StaticPagesController < ApplicationController
    def home
        if user_signed_in?
            @post = current_user.posts.build
            @acquired = @post.acquireds.build
            debugger
            @pachi = Classification.first.machines.all
            @slot = Classification.second.machines.all
        end
    end

    def help
    end
end
