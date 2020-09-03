class PerformerController < ApplicationController
  def index
    @performers = Performer.all
  end

  def new
    @performer = Performer.new
  end

  def create
    @performer = Performer.new(
      leader_name: params[:leader_name],
      email: params[:email], 
      password: params[:password],
      image_name: "default.jpg"
      )
    if @performer.save
      redirect_to("/performer/index")
      flash[:notice] = "アカウント登録しました"
    else
      render("performer/new")
    end
  end

  def show
    @performer = Performer.find_by(id: params[:id])
  end

  def edit
    @performer = Performer.find_by(id: params[:id])
  end

  def  update
    @performer = Performer.find_by(id: params[:id])
    @performer.leader_name = params[:leader_name]
    @performer.group_name = params[:group_name]
    @performer.email = params[:email]
    @performer.description = params[:description]
    @performer.password_digest = params[:password_digest]

    if params[:image]
      @performer.image_name = "#{@performer.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@performer.image_name}",image.read)
    end  

    if @performer.save
      flash[:notice] = "ユーザー情報編集しました"
      redirect_to("/performer/#{@performer.id}")
    else
      render("performer/edit")
    end

  end

  def destroy 
    @performer = Performer.find_by(id: params[:id])
    @performer.destroy
    redirect_to("/performer/index")
  end

end
