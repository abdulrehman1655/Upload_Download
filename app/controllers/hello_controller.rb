class HelloController < ApplicationController
  def upload
  end

  def upload_1
    @user = User.new(name:params[:name],email:params[:email])

   #render :text =>'Cannot creates'
    if @user.save

    else
      render :text =>'creates not'
    end
    @user.update_attributes(avatar:params[:flee])
  end

  def display
    @user = User.find(:all)
  end

  def download
    @path = "#{Rails.root}/public#{params[:url]}".to_s
    @index = @path.index('?')
    for i in @index..@path.length-1
      @path[i] = ' '
    end
    send_file @path.strip!
  end

  def delete
    @user = User.find(params[:id])
    @user.update_attributes(:avatar => nil)
    @user.delete

  end

end
