import 'package:bookly_app/core/shared_widgets/show_error_message.dart';
import 'package:bookly_app/core/shared_widgets/show_success_message.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlBooks(context, String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    showErrorMessage(context, message: 'Could not launch $url');
    return;
  }
  showsuccessmessage(context, message: LocaleKeys.loading.tr());
}
