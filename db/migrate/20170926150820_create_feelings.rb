class CreateFeelings < ActiveRecord::Migration[5.1]
  def change
    create_table :feelings do |t|
      t.references :repo, foreign_key: true
      t.references :user, foreign_key: true
      t.string :feeling_content

      t.timestamps
    end
  end
end
