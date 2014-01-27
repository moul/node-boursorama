#!/usr/bin/env coffee

# clear terminal
process.stdout.write '\u001B[2J\u001B[0;0f'

{Client} = require '..'

client = new Client
  verbose: true
  browser:
    verbose: true

client.on 'ready', ->
  console.log 'ready'
  setTimeout (=> @goto ''), 3000
