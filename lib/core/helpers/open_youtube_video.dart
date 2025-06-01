import 'package:url_launcher/url_launcher.dart';

void openYouTubeVideo(String videoKey) async {
  final url = 'https://www.youtube.com/watch?v=$videoKey';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
