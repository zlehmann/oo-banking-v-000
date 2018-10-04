class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50
    @status = "pending"
  end

  def valid?()
    if @sender.valid? == true && @reciever.valid? == true
      return true
    else
      return false
    end
  end

end
