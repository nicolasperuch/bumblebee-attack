child_process = require('child_process')
module.exports = (robot) ->
  robot.respond /grafana instance/i, (msg) ->
    child_process.exec 'systemctl start grafana-server', (error, stdout, stderr) ->
      msg.send("Grafana instance up")