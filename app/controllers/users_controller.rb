class UsersController < ApplicationController
  
  def show # i.e. what the page is called
    @user = User.find(params[:id])
    # here using params to retrieve the user id
    #technically it's a string but find is intelligent enough to convert to int
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Hi " + @user.name + ", welcome to the Sample App! " 
      redirect_to @user # doesn't need the path!
    else
      render 'new'
    end
  end
  
  
end
