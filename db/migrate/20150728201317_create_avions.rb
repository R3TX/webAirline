class CreateAvions < ActiveRecord::Migration
  def change
    create_table :avions do |t|
      t.string :idAvion
      t.string :modeloAvion
      t.int :capacidad

      t.timestamps null: false
    end
  end
end
