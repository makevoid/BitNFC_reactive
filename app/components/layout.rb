class Layout
  include Inesita::Layout

  def render
    div class: 'container' do
      component NavBar
      div class: 'content' do
        component outlet
      end
    end
  end
end
