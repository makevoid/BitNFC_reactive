def undefined?(variable)
  `typeof(variable)` == "undefined"
end

class HDKeychain
  def initialize
    @private_key = HDPrivateKey.new
    log "keychain init - address: '#{@private_key.address_s}'"
  end

  def address(id)
    if undefined?(id)
      @private_key.address_s
    else
      derived_key(id).address_s
    end
  end

  private

  def derived_key(id)
    @private_key.derive_key id
  end
end
