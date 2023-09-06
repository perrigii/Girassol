class AddDefaultStatus < ActiveRecord::Migration[7.0]
  def change
    change_column_default :appointments, :status, from: nil, to: 'pendente'
  end
end
