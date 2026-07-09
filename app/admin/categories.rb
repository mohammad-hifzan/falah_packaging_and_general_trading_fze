ActiveAdmin.register Category do
  permit_params :name, :slug

  index do
    selectable_column
    id_column

    column :name
    column :slug
    column :products do |category|
      category.products.count
    end

    actions
  end

  filter :name
  filter :slug


  form do |f|
    f.inputs do
      f.input :name
      f.input :slug
    end

    f.actions
  end
end