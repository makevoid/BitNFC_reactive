require_relative 'navitem'

class NavBar
  include Inesita::Component

  def render
    nav        class: 'navbar navbar-default' do
      div      class: 'container'             do
        div    class: 'navbar-header'         do
          span class: 'navbar-brand'          do
            text 'BitNFC'

          end


          ul class: 'nav navbar-nav' do
            component NavItem, props: { name: :account,      label: "Account" }
            component NavItem, props: { name: :balance,      label: "Balance" }
            component NavItem, props: { name: :receive,      label: "Receive" }
            component NavItem, props: { name: :send,         label: "Send" }
            component NavItem, props: { name: :transactions, label: "Transactions" }

          end
        end
      end
    end
  end
end
