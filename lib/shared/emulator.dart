/// An [Emulator] provides the [host] and [port] for a Firebase emulator.
class Emulator {
  Emulator({required this.host, required this.port});
  final String host;
  final int port;
}
