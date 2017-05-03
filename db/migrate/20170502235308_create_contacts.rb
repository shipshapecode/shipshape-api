class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :company
      t.string :description
      t.string :email
      t.string :name
      t.string :project_type

      t.timestamps
    end
  end
end
