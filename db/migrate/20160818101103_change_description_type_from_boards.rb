class ChangeDescriptionTypeFromBoards < ActiveRecord::Migration[5.0]
  def change
    change_column :boards, :description, :text
  end
end
