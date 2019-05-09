ActiveAdmin.register Admission do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :image, :first_name, :other_name, :last_name, :place_of_birth, :resident_place, :date_of_birth, :legal_reg_date, :orphan, :previous_school, :level, :father_name, :father_id, :father_phone, :mother_name, :mother_id, :mother_phone, :comment
end
