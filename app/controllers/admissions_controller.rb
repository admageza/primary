class AdmissionsController < InheritedResources::Base

  private

    def admission_params
      params.require(:admission).permit(:image, :FirstName, :OtherName, :FirstName, :PlaceOfBirth, :ResidentPlace, :DateOfBirth, :LegalRegDate, :Orphan, :PreviousSchool, :level, :FatherName, :FatherId, :FatherPhone, :MotherName, :MotherId, :MotherPhone, :comment)
    end

end
