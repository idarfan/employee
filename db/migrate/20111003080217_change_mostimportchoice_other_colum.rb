class ChangeMostimportchoiceOtherColum < ActiveRecord::Migration
   def self.up    
     add_column :students, :mostimportchoice_other, :string
  end

  def self.down
       remove_column :students, :mostimportchoice_other
  end
end