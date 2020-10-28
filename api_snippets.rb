class API < Sinatra::Base
  def initialize(ledger:)
    @ledger = ledger
    super()
  end

  result = @ledger.record({ "some" => "data" })
  result.success?
  result.expense_id
  result.error_message
end
