class AddUserToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_reference :expenses, :user
  end
end
