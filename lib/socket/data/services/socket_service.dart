import 'package:dev_sandbox/socket/domain/entity/socket_message.dart';
import 'package:socket_io_client/socket_io_client.dart';

abstract class SocketService {
  Future<void> connect();

  Future<void> disconnect();

  Future<void> authorize(String userId);

  Future<void> send(Object message);
}

const _events = [
  'connect',
  'connect_error',
  'disconnect',
  'error',
  'reconnect',
];

final class SocketServiceImplementation extends SocketService {
  SocketServiceImplementation(String url) {
    _socket = io(url, OptionBuilder().setTransports(['websocket']).build());

    for (final event in _events) {
      _socket.on(event, (data) => _receiveStatus(event, data));
    }
  }

  late Socket _socket;

  @override
  Future<void> authorize(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<void> connect() {
    throw UnimplementedError();
  }

  @override
  Future<void> disconnect() {
    throw UnimplementedError();
  }

  @override
  Future<void> send(Object message) {
    throw UnimplementedError();
  }

  void _receiveStatus(String event, dynamic data) {
    final message = SocketMessage(event, '$data', DateTime.now());
  }
}
