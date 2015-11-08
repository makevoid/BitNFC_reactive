class Account
  include Inesita::Component

  def render
    div class: "account" do
      "My account"
      "main address (public)"
    end
  end
end
