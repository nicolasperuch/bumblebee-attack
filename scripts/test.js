module.exports = function(robot){
  
robot.respond(/Play despacito/i, function(res){
  res.send("https://www.youtube.com/watch?v=kJQP7kiw5Fk");
});

robot.respond(/Play twitch/i, function(res){
    res.send("https://www.twitch.tv");
});


}
