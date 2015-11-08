class NavItem
  include Inesita::Component

  def render
    li class: "#{"active" if router.current_url?(props[:name])}" do
      a href: router.url_for(props[:name]) do
        text props[:label]
      end
    end
  end
end
