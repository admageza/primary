json.extract! admission, :id, :image, :FirstName, :OtherName, :FirstName, :PlaceOfBirth, :ResidentPlace, :DateOfBirth, :LegalRegDate, :Orphan, :PreviousSchool, :level, :FatherName, :FatherId, :FatherPhone, :MotherName, :MotherId, :MotherPhone, :comment, :created_at, :updated_at
json.url admission_url(admission, format: :json)

def as_json(options = {})
    super(options.merge(include: [:user, comments: {include: :user}]))
  end
