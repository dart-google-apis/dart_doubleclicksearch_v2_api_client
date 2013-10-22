library doubleclicksearch_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_doubleclicksearch_v2_api/src/browser_client.dart';
import "package:google_doubleclicksearch_v2_api/doubleclicksearch_v2_api_client.dart";

/** Report and modify your advertising data in DoubleClick Search (for example, campaigns, ad groups, keywords, and conversions). */
class Doubleclicksearch extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Doubleclicksearch([oauth.OAuth2 this.auth]);
}
