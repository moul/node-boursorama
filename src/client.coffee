{EventEmitter} = require 'events'
{Browser}      = require './browser'

class module.exports.Client extends EventEmitter
  constructor: (@options = {}) ->
    @debug 'constructor'
    @options.base_url = 'https://www.boursorama.com/'

    @browser = new Browser @options
    @browser.on 'ready', =>
      @debug 'ready'
      @emit 'ready'
      @browser.open ''

  debug: (args...) =>
    if @options.verbose
      console.log "Client>", args...

  go: (path) =>
    @browser.open path