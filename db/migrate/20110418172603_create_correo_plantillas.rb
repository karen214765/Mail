class CreateCorreoPlantillas < ActiveRecord::Migration
  def self.up
    create_table :correo_plantillas do |t|
      t.string :asunto
      t.string :mensaje
      t.timestamps
    end
  end

  def self.down
    drop_table :correo_plantillas
  end
end
