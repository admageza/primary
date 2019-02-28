json.array! @admissions, partial: 'admissions/admission', as: :admission

def as_json(options = {})
    super(options.merge(include: [:user, comments: {include: :user}]))
  end