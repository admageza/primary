class PrimariesController < InheritedResources::Base
  # before_action :authenticate_admin_user!
  before_action :set_primary, only: [:show, :edit, :update, :destroy]

  # GET /primaries
  # GET /primaries.json
  def index
    @primaries = Primary.all
    @primaries = Primary.page(params[:page]).per(3)
  end

  # GET /primaries/1
  # GET /primaries/1.json
  def show
  
   @primary = Primary.find(params[:id])
   @primaries = Primary.all
   @comment4 = @primary.comment4s.build
   @comment4s = @primary.comment4s
   
  end

  # GET /primaries/new
  def new
    @primary = Primary.new
  end

  # GET /primaries/1/edit
  def edit
  end

  # POST /primaries
  # POST /primaries.json
  def create
    @primary = Primary.new(primary_params)

    respond_to do |format|
      if @primary.save
        format.html { redirect_to @primary, notice: 'Primary article was successfully created.' }
        format.json { render :show, status: :created, location: @primary }
      else
        format.html { render :new }
        format.json { render json: @primary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primaries/1
  # PATCH/PUT /primaries/1.json
  def update
    respond_to do |format|
      if @primary.update(primary_params)
        format.html { redirect_to @primary, notice: 'Primary article was successfully updated.' }
        format.json { render :show, status: :ok, location: @primary }
      else
        format.html { render :edit }
        format.json { render json: @primary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primaries/1
  # DELETE /primaries/1.json
  def destroy
    @primary.destroy
    respond_to do |format|
      format.html { redirect_to primarys_url, notice: 'Primary article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primary
      @primary = Primary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def primary_params
      params.require(:primary).permit(:title, :body, :image)
    end

end
