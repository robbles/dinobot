# Description:
#   Send message to a specified chat room.
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_ANNOUNCE_ROOMS - comma-separated list of rooms
#
# Commands:
#   hubot say in <room> "<message>" - Sends a message to a room.
#
# Author:
#   Rob O'Dwyer

module.exports = (robot) ->

  robot.respond /say in ([^ ]*) "(.*)"/i, (msg) ->
    room = msg.match[1]
    announcement = msg.match[2]
    robot.messageRoom room, announcement
