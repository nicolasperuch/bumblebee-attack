module.exports = (robot) ->
  robot.respond /greet/i, (msg) ->
    msg.send "Hello, World!"