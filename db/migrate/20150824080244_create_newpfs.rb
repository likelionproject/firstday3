class CreateNewpfs < ActiveRecord::Migration
  def change
    create_table :newpfs do |t|
      
      t.string :pf_title
      t.string :pf_add_br
      t.text :pf_infor
      t.string :pf_add_lat
      t.string :pf_add_lng
      t.string :pf_image
      
      t.date :pf_date
      t.string :pf_time
      
      t.string :musical
      t.string :play
      t.string :concert
      t.string :classic
      t.string :jeonsi
      t.string :sport
      t.string :busking
      t.string :amateur
      t.string :etc

    end
  end
end
