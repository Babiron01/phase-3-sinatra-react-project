class Students < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :course
      t.reference :course, foreign_key: true
    end
  
  end
end
