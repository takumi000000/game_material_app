App.chat_room = App.cable.subscriptions.create("ChatRoomChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    var chat = document.getElementById('chat');
    var newMessage = document.createElement('p');
    newMessage.innerText = data['message'];
    chat.appendChild(newMessage);
  },

  speak: function(message) {
    return this.perform('speak', { message: message });
  }
});
