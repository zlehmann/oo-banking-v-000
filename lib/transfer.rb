class Transfer
  # your code here
  attr_accessor :sender, :reciever, :amount, :status

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @amount = 50
    @status = "pending"
  end

  def valid?(sender, reciever, amount)
    sender_is_valid = sender.valid?
    reciever_is_valid = reciever.valid?
    if sender_is_valid == true && reciever_is_valid == true
      return true
    else
      return false
    end
  end

end
