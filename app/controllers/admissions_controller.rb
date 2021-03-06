class AdmissionsController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :logged_in, only: [:edit, :update]
  before_action :set_admission, only: [:show, :edit, :update, :destroy]

  # GET /admissions
  # GET /admissions.json
  def index
   @users = User.all.where("id != ?", current_user.id)
   @admissions = Admission.page(params[:page]).per(3)
    q_param = params[:q]
    @q = Admission.ransack q_param
    @admissions = @q.result.page
  end

  # GET /admissions/1
  # GET /admissions/1.json
  def show
   @users = User.all.where("id != ?", current_user.id)
   @admission = Admission.find(params[:id])
   @admissions = Admission.all
   @commentable = @admission
   @comment = @commentable.comments.build
   @comments = @commentable.comments
   
  end

  # GET /admissions/new
  def new
    @admission = Admission.new
  end

  # GET /admissions/1/edit
  def edit
    @admission = Admission.find(params[:id])
  end

  # POST /admissions
  # POST /admissions.json
  def create
    @admission = Admission.new(admission_params)
    @admission.user = current_user
    
    respond_to do |format|
      if @admission.save
        AdmissionMailer.admission_mail(current_user.email).deliver
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
      params.require(:admission).permit(:image, :first_name, :other_name, :last_name, :place_of_birth, :resident_place, :date_of_birth, :legal_reg_date, :orphan, :previous_school, :level, :father_name, :father_id, :father_phone, :mother_name, :mother_id, :mother_phone, :comment)
    end

end
