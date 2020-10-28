module ExpenseTracker
  RecordResult = Struct.new(:success?, :expense_id, :error_messages)

  class Ledger
    def record(expense)
    end
  end
end
