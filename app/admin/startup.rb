ActiveAdmin.register Startup do

  permit_params :name, :description, :approved, :company_image

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Startup", :multipart => true do
      f.input :name
      f.input :description
      f.input :approved
      f.input :company_image, hint: f.startup.company_image? ? image_tag(f.startup.company_image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.actions 
  end

  show do |startup|
    attributes_table do
      row :name 
      row :description
      row :approved
      row :company_image do
        startup.company_image? ? image_tag(startup.company_image.url, height: '100') : content_tag(:span, "No photo yet")
      end
    end
    active_admin_comments
  end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
