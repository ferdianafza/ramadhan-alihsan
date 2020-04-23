ActiveAdmin.register Student do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :password, :firstname, :lastname, :major_id, :stage_id
  #
  # or

  config.sort_order = 'email_asc'

  index do
    selectable_column
    id_column
    column :firstname
    column :lastname
    column :email
    column :major
    actions
  end

  filter :email, filters: [:contains]
  filter :firstname, filters: [:contains]
  filter :lastname, filters: [:contains]
  filter :major, filters: [:contains]

  form do |f|
    f.inputs do
      f.input :firstname
      f.input :lastname
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :major
    end
    f.actions
  end
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
