class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|

      t.timestamps
      t.title :string
      t.body :text
      t.user_id :integer
    end
  end
end
