class CreateRepos < ActiveRecord::Migration[5.1]
  def change
    create_table :repos do |t|
      t.references :user, foreign_key: true
      t.string :repo_name
      t.string :language

      t.timestamps
    end
  end
end
