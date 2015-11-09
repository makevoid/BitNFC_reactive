bitcore = js_require 'bitcore-lib'

class PrivateKey
  attr_reader :key, :address

  def initialize(key)
    @key     = `new bitcore.PrivateKey(key)`
    @address = `self.key.toAddress()`
  end

  def address_s
    `self.address.toString()`
  end
end
