class AdmissionsController < InheritedResources::Base
 # before_action :authenticate_admin_user!
  before_action :require_login, only: [:new, :show]
  before_action :set_admission, only: [:show, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update, :destroy]

  # GET /admissions
  # GET /admissions.json
  def index
     @users = User.all.where("id != ?", current_user.id)
    @admissions = Admission.all
    @admissions = Admission.page(params[:page]).per(3)
  end

  # GET /admissions/1
  # GET /admissions/1.json
  def show
   @users = User.all.where("id != ?", current_user.id)
   @admission = Admission.find(params[:id])
   @admissions = Admission.all
   
   
  end

  # GET /admissions/new
  def new
    @admission = Admission.new
  end

  # GET /admissions/1/edit
  def edit
  end

  # POST /admissions
  # POST /admissions.json
  def create
    @admission = Admission.new(admission_params)
    @admission.user = current_user
    
    respond_to do |format|
      if @admission.save
        format.html { redirect_to @admission, notice: 'Admission information was successfully registered.' }
        format.json { render :show, status: :created, location: @admission }
      else
        format.html { render :new }
        format.json { render json: @admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admissions/1
  # PATCH/PUT /admissions/1.json
  def update
    respond_to do |format|
      if @admission.update(admission_params)
        format.html { redirect_to @admission, notice: 'Admission information was successfully updated.' }
        format.json { render :show, status: :ok, location: @admission }
      else
        format.html { render :edit }
        format.json { render json: @admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primaries/1
  # DELETE /primaries/1.json
  def destroy
    @admission.destroy
    respond_to do |format|
      format.html { redirect_to admissions_url, notice: 'Admission information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admission
      @admission = Admission.find(params[:id])
    end
    
    def require_login
     unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_path 
     end
    end
  
   def correct_user
     redirect_to(new_user_path) unless @admission.user == current_user
   end

    # Never trust parameters from the scary internet, only allow the white list through.

    def admission_params
      params.require(:admission).permit(:image, :FirstName, :OtherName, :FirstName, :PlaceOfBirth, :ResidentPlace, :DateOfBirth, :LegalRegDate, :Orphan, :PreviousSchool, :level, :FatherName, :FatherId, :FatherPhone, :MotherName, :MotherId, :MotherPhone, :comment)
    end

end
