class Receive
  include Inesita::Component

  def address
    store.get :last_keychain_address
  end

  def incr_key
    keychain = store.get :keychain
    key      = store.get :last_key_used
    key     += 1
    store.set :last_key_used,         key
    store.set :last_keychain_address, keychain.address(key)
  end

  def render
    delete_previous_qr

    div class: "receive" do
      component QRCode, props: { address: address }
      h3 {address}
      p {"(receiving address)"}
    end
  end

  def after_render
    incr_key
  end
end
