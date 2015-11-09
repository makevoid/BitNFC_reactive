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
    div class: "receive" do
      address
    end
  end

  def after_render
    incr_key
  end
end
