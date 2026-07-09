ActiveAdmin.register Service do
  permit_params :title,
                :description,
                :short_description,
                :featured,
                :icon

  index do
    selectable_column
    id_column
    column :title
    column :short_description
    column :featured
    column :icon
    column :created_at

    actions
  end

  filter :title
  filter :featured

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :short_description
      f.input :icon
      f.input :featured
    end

    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :short_description
      row :icon
      row :featured
      row :created_at
      row :updated_at
    end
  end
end