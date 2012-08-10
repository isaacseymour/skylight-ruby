require 'active_support/notifications'

module Tilde

  # TODO: Have smarter feature detection
  if true
    require 'tilde/notifications'
  end

  require 'tilde/instrumenter'
  require 'tilde/subscriber'
  require 'tilde/tracer'
  require 'tilde/util'

  # Require the juicy bits
  require 'tilde/direwolf_native'

end
