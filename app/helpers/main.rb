module MainHelpers
  def js_require(name)
    `require(name)`
  end

  def log(value)
    `console.log(value)`
  end
end
