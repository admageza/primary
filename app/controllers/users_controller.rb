class UsersController < ApplicationController
  before_action :logged_in, only: [:create, :edit, :update]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.where("id != ?", current_user.id)
    @users = User.page(params[:page]).per(4)
    @conversations = Conversation.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
     @users = User.all.where("followed_id != ?", current_user.id)
    @users = User.all.where("id != ?", current_user.id)
    @favorite = current_user.favorites.find_by(user_id: @user.id)
    @favorites_users = current_user.favorite_users
    
    @publications = Publication.all
    @conversations = Conversation.all
    @messages = Message.all
  if @messages.length > 5
    @over_five = true
    @messages = @messages[-5..-1]
  end

  if params[:m]
    @over_ten = false
    @messages = Message.all
  end

  if @messages.last
    if @messages.last.user_id != current_user.id
     @messages.last.read = true
    end
  end
  
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to new_session_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to new_session_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    
    def logged_in
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def favorite
      @favorites_users = Favorite.find(user_id: params[:user_id])
    end
    
    def favorite
      @favorites_articles = Favorite.find(article_id: params[:article_id])
    end
    
    def favorited?(article)
    favorites.find_by(article_id: article.id).present?
    end
    
    def conversation
      @conversation = Conversation.find(params[:conversation_id])
    end
    
    def messages
      @messages = Message.find(user_id: params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :image, :email, :password,
                                 :password_confirmation, :body)
    end
end
