class SessionsController < ApplicationController

    def new
    end
    


    def create
        # binding.pry
        user = User.find_by(name: params[:user][:name])

        user = user.try(:authenticate, params[:user][:password])
    
        return redirect_to(controller: 'sessions', action: 'new') unless user
    
        session[:user_id] = user.id
    
        @user = user
    
        redirect_to '/users/show'
    end

    def destroy 
        session.delete :user_id 
        redirect_to '/'
    end 

 

end
