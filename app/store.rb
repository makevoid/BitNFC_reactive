class Store
  include Inesita::Store

  def initialize
    keychain = HDKeychain.new

    @store = {
      keychain:              keychain,
      keychain_address:      keychain.address,
      last_key_used:         1,
      last_keychain_address: keychain.address(1),
    }
  end

  def set(key, value)
    @store[key] = value
  end

  def get(key)
    @store[key]
  end
end
