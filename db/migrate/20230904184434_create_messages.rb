class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.boolean :is_read

      t.timestamps
    end
  end
end
