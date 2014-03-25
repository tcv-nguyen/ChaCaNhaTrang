ActiveAdmin.register Post do
  index do                            
  	column :id
    column :title                     
    column :description      
    column :image           
    column :price
    column :recipe
    column :created_at
    column :updated_at
    default_actions                   
  end   
end
