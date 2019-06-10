class CreateIdioms < ActiveRecord::Migration[5.2]
  def change
    create_table :idioms do |t|
      t.string :expression
      t.string :meaning
      t.timestamps
    end
  end
end
