require 'virtual-dom'
require 'opal'
require 'browser'
require 'browser/interval'
require 'inesita'

require 'router'
require 'store'
require_tree './components'

require 'helpers/main'
include MainHelpers

require 'models/privatekey'
require 'models/keychain'


$document.ready do
  App = Inesita::Application.new(
    router: Router,
    store:  Store,
    layout: Layout
  ).mount_to($document.body)
end
