class Keychain
  def initialize
    @private_key = PrivateKey.new
    log "keychain init - address: '#{@private_key.address_s}'"
  end

  def address
    @private_key.address_s
  end
end
