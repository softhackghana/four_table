class Recipe < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title   :string
    body    :text
    #country :string
	#country enum_string(:America, :French, :Ghana)
    timestamps
  end
  
  def name
		"Recipe: " + title
  end
    belongs_to :country
	
	has_many :category_assignments, :dependent => :destroy
	has_many :categories, :through => :category_assignments, :accessible => true
	
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
