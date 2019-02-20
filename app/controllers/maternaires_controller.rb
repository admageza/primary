class MaternairesController < InheritedResources::Base
  before_action :set_maternaire, only: [:show, :edit, :update, :destroy]

  # GET /maternaires
  # GET /maternaires.json
  def index
    @maternaires = Maternaire.all
    @maternaires = Maternaire.page(params[:page]).per(3)
  end

  # GET /maternaires/1
  # GET /maternaires/1.json
  def show
    @maternaire = Maternaire.find(params[:id])
    
  end

  # GET /maternaires/new
  def new
    @maternaire = Maternaire.new
  end

  # GET /maternaires/1/edit
  def edit
  end

  # POST /maternaires
  # POST /maternaires.json
  def create
    @maternaire = Maternaire.new(maternaire_params)
    
    respond_to do |format|
      if @maternaire.save
        format.html { redirect_to @maternaire, notice: 'maternaire was successfully created.' }
        format.json { render :show, status: :created, location: @maternaire }
      else
        format.html { render :new }
        format.json { render json: @maternaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maternaires/1
  # PATCH/PUT /maternaires/1.json
  def update
    respond_to do |format|
      if @maternaire.update(maternaire_params)
        format.html { redirect_to @maternaire, notice: 'Maternaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @maternaire }
      else
        format.html { render :edit }
        format.json { render json: @maternaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maternaires/1
  # DELETE /maternaires/1.json
  def destroy
    @maternaire.destroy
    respond_to do |format|
      format.html { redirect_to maternaires_url, notice: 'Maternaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maternaire
      @maternaire = Maternaire.find(params[:id])
    end

    def maternaire_params
      params.require(:maternaire).permit(:title, :image, :body)
    end

end
