class ChangeCategoryToReferenceFromBoards < ActiveRecord::Migration[5.0]
  def change
    # péter la colonne category
    remove_column :boards, :category, :string
    # ajouter colonne category reference
    add_reference :boards, :category, index: true, foreign_key: true
  end
end
