class CreateArtmedia < ActiveRecord::Migration[6.1]
  def change
    create_table :artmedia do |t|
      t.boolean :print
      t.boolean :digital
      t.boolean :sculpture
      t.boolean :painting
      t.boolean :drawing
      t.boolean :photography
      t.boolean :canvass
      t.boolean :paper
      t.boolean :mixed_media
      t.boolean :watercolor
      t.boolean :oil_paint
      t.boolean :acrylic_paint
      t.boolean :gouche_paint
      t.boolean :pencil
      t.boolean :ink
      t.boolean :metal
      t.boolean :stone
      t.boolean :etching
      t.boolean :lithograph
      t.boolean :glass
      t.boolean :clay
      t.boolean :ceramic

      t.timestamps
    end
  end
end
