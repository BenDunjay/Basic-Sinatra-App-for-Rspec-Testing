module ExpenseTracker
  RecordResult = Struct.new(:success?, :expense_id, :error_messages)

  class Ledger
    def record(expense)
    end

    def expenses_on(date)
    end
  end # class end
end # module end
