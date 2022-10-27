import 'base_command.dart';

/// FileName clean
///
/// @Author wangjiong
/// @Date 2022/10/18
///
/// @Description: clean command
class CleanCommand extends BaseCommand {
  factory CleanCommand() => _instance;

  CleanCommand._internal();

  static late final CleanCommand _instance = CleanCommand._internal();

  final String _DEFAULT_COMMAND = "flutter clean";

  @override
  String get description => "run $_DEFAULT_COMMAND";

  @override
  String get name => "clean";

  @override
  List<String> get aliases => ["c"];

  @override
  Future<void> run([String? commands]) {
    return super.run(commands ?? _DEFAULT_COMMAND);
  }
}
