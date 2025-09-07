import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  Future<InitializationStatus> initialization;

  AdState(this.initialization);

  String get bannerAdUnitId => 'ca-app-pub-9415784539457110/1670213194';

  BannerAdListener get adListener => _adListener;

  BannerAdListener _adListener = BannerAdListener();
}
