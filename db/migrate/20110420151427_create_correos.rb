class CreateCorreos < ActiveRecord::Migration
  def self.up
    create_table :correos do |t|
      t.string :usuario
      t.string :asunto
      t.string :mensaje

      t.timestamps
    end
  end

  def self.down
    drop_table :correos
  end
end
