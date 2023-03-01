class ExpensesController < ApplicationController

   before_action :authenticate_user!

  def index
    @expenses = Expense.order("date DESC")
    @expenses = Expense.by_category(params[:category_id])
    @expenses = Expense.where(user: current_user)
  end
end
