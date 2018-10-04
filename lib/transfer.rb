class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50
    @status = "pending"
  end

  def valid?(sender, reciever, amount)
    sender_is_valid = sender.valid?
    receiver_is_valid = receiver.valid?
    if sender_is_valid == true && receiver_is_valid == true
      return true
    else
      return false
    end
  end

end
