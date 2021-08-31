import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    const currentUserId = messagesContainer.dataset.currentUserId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
        let message = document.createElement('div');
        message.innerHTML = data.partial;
        let messageDiv = message.firstElementChild;
        if (parseInt(currentUserId, 10) !== parseInt(data.message_user_id, 10)) {
          messageDiv.classList.remove('text-right');
        }
        messagesContainer.appendChild(messageDiv);
      },
    });
  }
}

export { initChatroomCable };
