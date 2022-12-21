import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HtmlTextView extends StatelessWidget {
  const HtmlTextView(this.htmlContent, {Key key}) : super(key: key);

  final String htmlContent;

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      htmlContent,
      onTapUrl: (url) {
        launchUrl(Uri.parse(url));
      },
    ).px20();
  }
}
