class BesteachersController < InheritedResources::Base
  before_action :set_besteacher, only: [:show, :edit, :update, :destroy]

  # GET /besteachers
  # GET /besteachers.json
  def index
    @besteachers = Besteacher.all
    @besteachers = Besteacher.page(params[:page]).per(3)
  end

  # GET /besteachers/1
  # GET /besteachers/1.json
  def show
    @besteacher = Besteacher.find(params[:id])
    @comment = @besteacher.comments.build
    @comments = @besteacher.comments
   
  end

  # GET /besteachers/new
  def new
    @besteacher = Besteacher.new
  end

  # GET /besteachers/1/edit
  def edit
  end

  # POST /besteachers
  # POST /besteachers.json
  def create
    @besteacher = Besteacher.new(besteacher_params)

    respond_to do |format|
      if @besteacher.save
        format.html { redirect_to @besteacher, notice: 'Best Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @besteacher }
      else
        format.html { render :new }
        format.json { render json: @besteacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /besteachers/1
  # PATCH/PUT /besteachers/1.json
  def update
    respond_to do |format|
      if @besteacher.update(besteacher_params)
        format.html { redirect_to @besteacher, notice: 'Best Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @besteacher }
      else
        format.html { render :edit }
        format.json { render json: @besteacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /besteachers/1
  # DELETE /besteachers/1.json
  def destroy
    @besteacher.destroy
    respond_to do |format|
      format.html { redirect_to besteachers_url, notice: 'Best Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_besteacher
      @besteacher = Besteacher.find(params[:id])
    end

    def besteacher_params
      params.require(:besteacher).permit(:image, :name, :body)
    end

end
