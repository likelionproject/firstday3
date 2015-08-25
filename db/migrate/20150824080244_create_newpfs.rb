class CreateNewpfs < ActiveRecord::Migration
  def change
    create_table :newpfs do |t|
      
      t.string :performancename
      t.string :briefaddress
      t.text :performancenameinfo
    
      t.string :my_image
      
      t.string :musical
      t.string :play
      t.string :concert
      t.string :classic
      t.string :jeonsi
      t.string :sport
      t.string :busking
      t.string :amateur
      t.string :etc


      t.timestamps null: false
    end
  end
end
