ActiveAdmin.register Student do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :password, :password_confirmation, :reset_password_token, :reset_password_sent_at, :remember_created_at, :firstname, :lastname, :major_id, :stage_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :firstname, :lastname, :major_id, :stage_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

   index do
    selectable_column
    id_column
    column "Nama" do |m|
      student = Student.find(m.id).firstname
      student2 = Student.find(m.id).lastname
      student + " " +student2
    end

    column :email
    column "Jurusan" do |m|
      student_major = Student.find(m.id).major
      student_major
    end
    actions
  end

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

end
