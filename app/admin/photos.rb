ActiveAdmin.register Photo do
  index do
    
    column :name
    column("thumbnail"){|photo| link_to image_tag (photo.file_url(:thumb))}
    column :url
    column :created_at
    column :updated_at
    
    default_actions()
    
  end

  form :partial => "form"
end
