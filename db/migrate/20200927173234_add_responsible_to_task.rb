class AddResponsibleToTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :responsible, foreign_key: true
  end
end
