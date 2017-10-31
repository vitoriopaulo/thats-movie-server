class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :sinopse
      t.integer :year
      t.string :director
      t.string :actors
      t.string :poster
      t.string :trailer
      t.string :category
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end
