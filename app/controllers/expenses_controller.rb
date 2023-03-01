class ExpensesController < ApplicationController
  def index
   @expenses = Expense.order("date DESC")
   @expenses = Expense.by_category(params[:category_id])
  end
end
