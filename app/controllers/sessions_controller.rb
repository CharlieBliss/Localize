class SessionsController < ApplicationController


def new
  @user = User.new
end

def create
  user = User.find_by(username: params[:username])
  if user.password == params[:password]
    current_user = user.
    redirect_to root_path
  else
    @errors = "Your Username or Password is incorrect"
    render '_form.html.erb'
  end
  end

  def destroy
    session.clear
    redirect_to root_path
  end





end