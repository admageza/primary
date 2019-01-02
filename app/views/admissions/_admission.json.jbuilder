json.extract! admission, :id, :image, :name, :othername, :lastname, :dob, :pob, :legalregdate, :orphan, :fathername, :fatherid, :fatherphone, :mothername, :motherid, :motherphone, :residentplace, :previousschool, :level, :comment, :created_at, :updated_at
json.url admission_url(admission, format: :json)
