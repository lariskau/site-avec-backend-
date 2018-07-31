class StaticController < ApplicationController
  def home
  end

  def errors
  end

  def create_users
    puts params
    puts "Token: #{params[:authenticity_token]}"
    @user = User.create(name: params[:name], bio:params[:bio])
    if @user.save
      redirect_to "/user/#{params[:name]}"
      else
       redirect_to '/errors'
    end
    puts @user.name
  end
end
