class AddAmoutCreditToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :amount_credit, :integer
  end
end
