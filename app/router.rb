class Router
  include Inesita::Router

  def routes
    route '/',             to: Account
    route '/account',      to: Account
    route '/balance',      to: Balance
    route '/receive',      to: Receive
    route '/send',         to: Send
    route '/transactions', to: Transactions
  end
end
