class CreateFreeChoicePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :free_choice_posts do |t|
      t.string :name
      t.text :description
      t.string :pais

      t.timestamps
    end
  end
end
