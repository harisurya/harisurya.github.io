part of 'shared.dart';

Future<void> launchInBrowser(String host) async {
  Uri url = Uri(host: host);

  var httpsUri = Uri(scheme: 'https', host: host, path: '');
  if (await canLaunchUrl(httpsUri)) {
    await launchUrl(
      httpsUri,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    );
  } else {
    throw 'Could not launch $url';
  }
}
