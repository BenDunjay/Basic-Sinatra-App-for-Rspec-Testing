module ExpenseTracker
  RecordResult = Struct.new(:success?, :expense_id, :error_messages)

  class Ledger
    def record(expense)
      DB[:expenses].insert(expense)
      id = DB[:expenses].max(:id)
      RecordResult.new(true, id, nil)
    end

    def expenses_on(date)
      DB[:expenses].where(date: date).all
    end
  end # class end
end # module end
