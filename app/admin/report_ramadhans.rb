ActiveAdmin.register ReportRamadhan do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :puasa, :tadarus, :tarawih, :subuh, :dzuhur, :ashar, :magrib, :isya,
                  :duha, :tahajud, :taubat, :hajat, :alasan, :student_id, :tanggal,
                  :file
  #
  # or

  # filter :student
  filter :tanggal
  filter :student_firstname_or_student_lastname_cont, label: 'Cari Berdasarkan Nama'
  filter :student,
   collection: -> { Major.all },
   label:      'Kelas'

  index do
    selectable_column
    id_column
    column "Nama" do |m|
      student = Student.find(m.student_id).firstname
      student2 = Student.find(m.student_id).lastname
      student +" "+student2
    end
    column "Jurusan" do |m|
      student = Student.find(m.student_id).major
    end
    column :puasa
    column :tadarus
    column :tarawih
    column :tanggal
    actions
  end
  # permit_params do
  #   permitted = [:puasa, :tadarus, :tarawih, :subuh, :dzuhur, :ashar, :magrib, :isya, :duha, :tahajud, :taubat, :hajat, :alasan, :student_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  csv do
    column(:Nama) { |r| r.student.firstname  }
    column(:tanggal) { |r| r.student.created_at  }
    column(:puasa) { |r| r.puasa }
    column(:tadarus) { |r| r.tadarus }
    column(:tarawih) { |r| r.tarawih }
    column(:subuh) { |r| r.subuh }
    column(:dzuhur) { |r| r.dzuhur }
    column(:ashar) { |r| r.ashar }
    column(:magrib) { |r| r.magrib }
    column(:isya) { |r| r.isya }
    column(:duha) { |r| r.duha }
    column(:tahajud) { |r| r.tahajud }
    column(:taubat) { |r| r.taubat }
    column(:hajat) { |r| r.hajat }
    column(:alasan) { |r| r.alasan }
  end


  show do
   attributes_table do
      # row :files do |av|
      #   image_tag av.files, width: "50%" if av.files.attached?
      # end

      row :files do |av|
        ul do
          if av.files.attached?
            av.files.each do |img|
              li do
                image_tag img, width: "40%"
              end
            end
          end
        end
      end

      row :student
      row :puasa
      row :tadarus
      row :tarawih

      row :subuh
      row :dzuhur
      row :ashar
      row :magrib
      row :isya

      row :duha
      row :tahajud
      row :taubat
      row :hajat
      row :alasan

    end
  end



end
