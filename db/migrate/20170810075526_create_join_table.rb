class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :posts, :tags do |t|
      #creating composite key
      t.index :post_id #foreign key from post
      t.index :tag_id #foreign key from tag
    end
  end
end
