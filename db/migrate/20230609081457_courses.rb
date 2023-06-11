class Courses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :semester
      t.integer :year
    end
  end
end
