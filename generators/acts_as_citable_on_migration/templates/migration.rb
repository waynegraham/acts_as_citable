class ActsAsCitableOnMigration < ActiveRecord::Migration
  def self.up
    create_table :cites do |t|
      t.int :citation_number
    end
    
    create_table :citations do |t|
      
      t.references :cites    
    end
  end
  
  def self.down
    drop_table :citations
    drop_table :cites
  end
end