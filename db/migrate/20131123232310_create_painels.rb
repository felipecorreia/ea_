class CreatePainels < ActiveRecord::Migration
  def change
    create_table :painels do |t|
      t.string :nome_app
      t.string :tipo_evento

      t.timestamps
    end
  end
end
