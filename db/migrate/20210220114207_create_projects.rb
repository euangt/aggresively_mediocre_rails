class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :portfolio, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.text :github_url
      t.boolean :deployed, default: false
      t.text :url, default: nil

      t.timestamps
    end
  end
end
