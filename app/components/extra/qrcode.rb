class QR
  def initialize(text:, selector:)
    @text     = text
    @selector = selector
  end

  def generate
    element = `document.querySelector(self.selector)`
    `
      new QRCode(element, {
        text:         self.text,
        width:        200,
        height:       200,
        colorDark:    "#000000",
        colorLight:   "#ffffff",
        correctLevel: QRCode.CorrectLevel.H
      })
    `
    true
  end
end


class QRCode
  include Inesita::Component

  def generate_qr
    qr = QR.new text: props[:address], selector: ".address_qr"
    qr.generate
    log "asd"
  end

  def render
    div class: "qrcode" do
      div class: "address_qr"
    end
  end

  def after_render
    `setTimeout(function(){ self.$generate_qr() }, 0)`
  end
end
