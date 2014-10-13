# Description:
#   Logs messages for "hubot debug" and "debug"
#
# Commands:
#   hubot debug <message> - Logs a debug message
#   debug <message> - Logs a debug message

util = require 'util'

module.exports = (robot) ->

  robot.respond /debug ?(.*)/i, (msg) ->
    console.log('Debug message addressed to bot:');
    console.log(msg.message)
    console.log(msg.envelope)

  robot.hear /debug ?(.*)/i, (msg) ->
    console.log('Debug message posted:');
    console.log(msg.message)
    console.log(msg.envelope)
