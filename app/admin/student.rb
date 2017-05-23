ActiveAdmin.register Student do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :first_name, :father_last_name, :mother_last_name, :enrollment, :curp,
                :email, :address, :cp, :phone, :cell_phone, :link_facebook, :link_instagram,
                :link_twitter, tutor_attributes: [:tutor_id, :id, :full_name, :emial, :phone, :cell_phone, :job, :address]
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs do
      f.input :first_name
      f.input :father_last_name
      f.input :mother_last_name
      f.input :enrollment
      f.input :curp
      f.input :email
      f.input :address
      f.input :cp
      f.input :phone
      f.input :cell_phone
      f.input :link_facebook
      f.input :link_instagram
      f.input :link_twitter
      f.input :link_twitter
      f.inputs do
        f.object.build_tutor  # show a default reference
        f.has_many :tutor, heading: "Tutor", new_record: false, allow_destroy: false do |d|
          d.input :full_name
          d.input :email
          d.input :phone
          d.input :cell_phone
          d.input :job
          d.input :address
        end
      end
    end
    f.actions
  end

  filter :first_name
  filter :father_last_name
  filter :mother_last_name
  filter :enrollment
  filter :curp
  filter :email
  filter :enrollment
  filter :cp
  filter :phone
  filter :cell_phone
  filter :tutor_full_name_eq, label: "Nombre del tutor"

end
