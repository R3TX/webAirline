class CreateMedioPagos < ActiveRecord::Migration
  def change
    create_table :medio_pagos do |t|
      t.string :MedioPago
      t.string :descripcion
      t.float :monto
      
      t.references :pasaje, index:true, foreing_key:true

      t.timestamps null: false
    end
  end
end
