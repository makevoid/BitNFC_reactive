class Store
  include Inesita::Store

  def initialize
    keychain = Keychain.new

    @store = {
      keychain: {
        address: keychain.address,
      },
      keychain_address: keychain.address,
    }
  end

  def set(key, value)
    @store[key] = value
  end

  def get(key)
    @store[key]
  end
end
