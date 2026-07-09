ActiveAdmin.register Product do
  permit_params :name,
                :description,
                :display_type,
                :featured,
                :category_id,
                :image

  includes :category

  index do
    selectable_column
    id_column

    column :image do |product|
      if product.image.attached?
        image_tag url_for(product.image), width: 80
      end
    end

    column :name
    column :category
    column :display_type
    column :featured
    column :created_at

    actions
  end

  filter :name
  filter :category
  filter :display_type
  filter :featured

  form do |f|
    f.inputs do
      f.input :name
      f.input :description

      f.input :category

      f.input :display_type,
              as: :select,
              collection: Product.display_types.keys

      f.input :featured

      f.input :image,
              as: :file

      if f.object.image.attached?
        div do
          image_tag url_for(f.object.image), width: 150
        end
      end
    end

    f.actions
  end

  show do
    attributes_table do
      row :id

      row :image do |product|
        if product.image.attached?
          image_tag url_for(product.image), width: 200
        end
      end

      row :name
      row :description
      row :category
      row :display_type
      row :featured
      row :created_at
      row :updated_at
    end
  end
end