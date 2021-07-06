ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :sizes, :colors, :price, :shipping_price, :shop_id, :colors_raw, :sizes_raw
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :sizes, :colors, :price, :shipping_price, :shop_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form title: "Edit Product" do |f|
    inputs "Details" do
      input :name
      input :description
      input :price
      input :shipping_price
      panel 'Colors & Sizes' do
        "Enter each item on a new line."
      end
      columns do
        column do
          label :colors
          input :colors_raw, as: :text, label: false
        end
        column do
          label :sizes
          input :sizes_raw, as: :text, label: false
        end
      end
    end
    actions
  end

end
