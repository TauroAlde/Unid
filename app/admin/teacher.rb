ActiveAdmin.register Teacher do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :first_name, :father_last_name, :mother_last_name, :enrollment, :email,
                :phone, :cell_phone, :degree, :degree_number, :master_degree, :master_degree_number,
                :doctorate, :doctorate_number, :work_place
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    column :enrollment
    column :first_name
    column :father_last_name
    column :mother_last_name
    column :email
    actions
  end

  filter :enrollment
  filter :first_name
  filter :father_last_name
  filter :mother_last_name
  filter :email
  filter :cell_phone
  filter :degree_number
  filter :master_degree_number
  filter :doctorate_number

end
