ActiveAdmin.register Student do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :status, :first_name, :father_last_name, :mother_last_name, :enrollment, :curp,
                :email, :address, :cp, :phone, :cell_phone, :link_facebook, :link_instagram,
                :link_twitter, tutor_attributes: [:tutor_id, :id, :full_name, :email, :phone, :cell_phone, :job, :address],
                student_careers_attributes: [:career_id ,:id, :student_id]
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
      f.input :enrollment
      f.input :status
      f.input :first_name
      f.input :father_last_name
      f.input :mother_last_name
      f.object.student_careers.build if f.object.new_record?
      f.has_many :student_careers,   heading: "Carrera", new_record: false, allow_destroy: false  do |h|
        h.input :career, label: 'Licenciatura'
      end
      f.input :curp
      f.input :email
      f.input :address
      f.input :cp
      f.input :phone
      f.input :cell_phone
      f.input :link_facebook
      f.input :link_instagram
      f.input :link_twitter
      f.inputs do
        f.object.build_tutor if f.object.new_record? # show a default reference
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

  show do
    attributes_table do
      row :first_name
      row :father_last_name
      row :mother_last_name
      row :status
      row :enrollment
      row :career do |student|
        student.careers.map(&:name).join(", ")
      end
      row :curp
      row :email
      row :cp
      row :phone
      row :cell_phone
      row :address
      row :link_facebook
      row :link_instagram
      row :link_twitter
      row :updated_at
    end
  end
  sidebar "Informacion de contacto", only: [:show, :edit] do
    attributes_table_for student.tutor do
      row :full_name
      row :email
      row :phone
      row :cell_phone
      row :job
      row :address
    end
  end

  filter :first_name
  filter :father_last_name
  filter :mother_last_name
  filter :enrollment
  filter :status
  filter :careers_name_cont, label: "Carrera"
  
  index do
    selectable_column
    column :enrollment
    column :first_name
    column :father_last_name
    column :mother_last_name
    column :updated_at
    actions
  end

  csv do
    column :first_name
    column :father_last_name
    column :mother_last_name
    column :status
    column :enrollment
    column :career do |student|
      student.careers.map(&:name).join(", ")
    end
    column :curp
    column :email
    column :cp
    column :phone
    column :cell_phone
    column :address
    column :link_facebook
    column :link_instagram
    column :link_twitter
    column :updated_at
  end

end
