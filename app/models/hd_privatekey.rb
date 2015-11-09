bitcore = js_require 'bitcore-lib'

class HDPrivateKey
  attr_reader :key, :address

  def initialize(key, id: 0)
    @hd_key  = `new bitcore.HDPrivateKey(key)`
    @key     = derive id
    @address = `self.key.toAddress()`
  end

  def derive(id)
    `self.hd_key.derive("m/0'/0'/0'/0/"+id).privateKey`
  end

  def derive_key(id)
    key = derive(id)
    PrivateKey.new `key.toString()`
  end

  def address_s
    `self.address.toString()`
  end
end
