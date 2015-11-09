module MainHelpers
  def js_require(name)
    `require(name)`
  end

  def log(value)
    `console.log(value)`
  end

  # qr

  def delete_previous_qr
    qr = `document.querySelector('.address_qr')`
    `qr && (qr.innerHTML = '')`
  end
end
