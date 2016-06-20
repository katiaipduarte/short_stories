class InitialSchema < ActiveRecord::Migration
   def change
      create_table :stories do |t|
         t.text :body
         t.timestamps
      end

      create_table :categories do |t|
         t.string :name
      end

      create_table :comments do |t|
         t.text :body
         t.timestamps
      end

      #for our comments table, create reference to stories table
      #index: true is to make sure that when comment is update, it still shows
      add_reference :comments, :story, index: true
      #creates user_id in comments table
      add_reference :comments, :user, index: true
      #creates user_id in stories table
      add_reference :stories, :user, index: true
      #creates category_id in stories table
      add_reference :stories, :category, index: true

   end
end
