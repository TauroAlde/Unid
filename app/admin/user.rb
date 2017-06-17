ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :username
    column :admin
    column :email
    actions
  end

  filter :first_name
  filter :last_name
  filter :admin
  filter :email
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :last_name
      f.input :username
      f.input :admin
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :username
      row :admin
      row :email
      row :encrypted_password
      row :last_sign_in_at
      row :created_at
      row :updated_at
      row :current_sign_in_ip
      row :last_sign_in_ip
    end
  end

end
