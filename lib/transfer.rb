class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50
    @status = "pending"
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      return true
    else
      return false
    end
  end

  def execute_transaction
    if self.valid? == true && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      return "Transaction rejected. Please check your account balance."
  end

end
