class CamposFaltantesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cedula, :int
    add_column :users, :edad, :int
    add_column :users, :telefono, :string
    add_column :users, :genero, :string
  end
end
