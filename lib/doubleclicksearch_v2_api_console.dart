library doubleclicksearch_v2_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_doubleclicksearch_v2_api/src/console_client.dart';

import "package:google_doubleclicksearch_v2_api/doubleclicksearch_v2_api_client.dart";

/** Report and modify your advertising data in DoubleClick Search (for example, campaigns, ad groups, keywords, and conversions). */
class Doubleclicksearch extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your advertising data in DoubleClick Search */
  static const String DOUBLECLICKSEARCH_SCOPE = "https://www.googleapis.com/auth/doubleclicksearch";

  final oauth2.OAuth2Console auth;

  Doubleclicksearch([oauth2.OAuth2Console this.auth]);
}
