ActiveAdmin.register Setting do
  permit_params :company_name,
                :tagline,
                :about,
                :mission,
                :vision,
                :phone,
                :alternate_phone,
                :email,
                :address,
                :whatsapp,
                :facebook,
                :instagram,
                :linkedin

  actions :all, except: [:destroy]

  index do
    selectable_column
    id_column

    column :company_name
    column :phone
    column :email

    actions
  end

  form do |f|
    f.inputs "Company Details" do
      f.input :company_name
      f.input :tagline
      f.input :about
      f.input :mission
      f.input :vision
      f.input :phone
      f.input :alternate_phone
      f.input :email
      f.input :address
    end

    f.inputs "Social Links" do
      f.input :facebook
      f.input :instagram
      f.input :linkedin
      f.input :whatsapp
    end

    f.actions
  end

  show do
    attributes_table do
      row :company_name
      row :tagline
      row :about
      row :mission
      row :vision
      row :phone
      row :alternate_phone
      row :email
      row :address
      row :facebook
      row :instagram
      row :linkedin
      row :whatsapp
    end
  end
end