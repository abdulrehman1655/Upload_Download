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
    @path = "#{Rails.root}#{params[:url]}".to_s   #change here
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

  def multiple
  end


  def multiple_1
      Book.create(avatar:params[:flee][:one])
      Book.create(avatar:params[:flee][:two])
      Book.create(avatar:params[:flee][:three])
      Book.create(avatar:params[:flee][:four])
      Book.create(avatar:params[:flee][:five])
      redirect_to :action => 'upload'
  end

end
