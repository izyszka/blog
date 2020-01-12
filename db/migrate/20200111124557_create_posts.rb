class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :hook
      t.text :body
      t.date :published_at, deafult: Date.today
      t.boolean :draft, null: false, deafult: false

      t.timestamps
    end
  end
end
