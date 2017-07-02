class Account::PostsController < ApplicationController
 before_action :authenticate_user!
 def index
   @posts = current_user.posts
 end

 def edit
   @post = Group.find(params[:id])
end

 def destroy
     @Group = Group.find(params[:id])
     @post.destroy

     redirect_to posts_path
   end
end
