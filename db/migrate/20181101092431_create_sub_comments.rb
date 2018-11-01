class CreateSubComments < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_comments do |t|
      t.text :content
      t.belongs_to :user
      t.belongs_to :comment
      t.timestamps
    end

    remove_column :gossips, :anonymous_gossiper
    change_table :gossips do |t|
    	
    	t.belongs_to :user
    end

    change_table :likes do |t|
    	t.belongs_to :user
    end
    change_table :comments do |t|
    	t.belongs_to :user
    end

  end
end
