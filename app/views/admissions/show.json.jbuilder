json.partial! "admissions/admission", admission: @admission

def as_json(options = {})
    super(options.merge(include: [:user, comments: {include: :user}]))
  end