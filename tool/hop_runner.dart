library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main() {

  List pathList = [
    'lib/doubleclicksearch_v2_api_browser.dart',
    'lib/doubleclicksearch_v2_api_console.dart',
    'lib/doubleclicksearch_v2_api_client.dart'
  ];

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop();
}
