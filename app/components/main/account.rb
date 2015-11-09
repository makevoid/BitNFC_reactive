class Account
  include Inesita::Component

  def address
    store.get :keychain_address
  end

  def render
    div class: "account" do
      h1 {"My account"}
      div do
        h4 {"main address:"}
        component QRCode, props: { address: address }
        h3 {address}
        p {"(public address)"}
      end
    end
  end
end
