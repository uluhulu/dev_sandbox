class SocketMessage {
  final String event;
  final String message;
  final DateTime recieved;

  SocketMessage(this.event, this.message, this.recieved);
}
