class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :to
      t.string :from
      t.decimal :amount

      t.timestamps
    end
  end
end
