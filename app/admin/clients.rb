ActiveAdmin.register Client do
  permit_params :name,
                :website,
                :logo

  index do
    selectable_column
    id_column

    column :logo do |client|
      image_tag(url_for(client.logo), width: 80) if client.logo.attached?
    end

    column :name
    column :website

    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :website
      f.input :logo, as: :file

      if f.object.logo.attached?
        div do
          image_tag url_for(f.object.logo), width: 150
        end
      end
    end

    f.actions
  end

  show do
    attributes_table do
      row :logo do |client|
        image_tag(url_for(client.logo), width: 200) if client.logo.attached?
      end

      row :name
      row :website
      row :created_at
      row :updated_at
    end
  end
end