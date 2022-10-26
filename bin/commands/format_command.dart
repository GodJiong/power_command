import 'base_command.dart';

/// FileName clean
///
/// @Author wangjiong
/// @Date 2022/10/18
///
/// @Description: format command
class FormatCommand extends BaseCommand {
  factory FormatCommand() => _instance;

  FormatCommand._internal();

  static late final FormatCommand _instance = FormatCommand._internal();

  final String command = "flutter format .";

  @override
  String get description => "run $command";

  @override
  String get name => "format";

  @override
  List<String> get aliases => ["f"];

  @override
  Future<void> run([String? commands]) {
    return super.run(commands ?? command);
  }
}
