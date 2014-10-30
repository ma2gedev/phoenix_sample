$(function() {
  var socket = new Phoenix.Socket("/ws");
  var $messageBox = $("#message-box");
  var $allMessages = $("#all-messages");

  socket.join("channel", "chat", {}, function(channel) {
    $messageBox.keypress(function(e) {
      if (e.which === 13) {
        e.preventDefault();
        channel.send("message", { message: $messageBox.val() });
        $messageBox.val("");
      }
    });
    channel.on("broadcast_message", function(data) {
      console.log("message: " + data['message']);
      $allMessages.prepend('<p>' + data['message'] + '</p>');
    });
  });
});
