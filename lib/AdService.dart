import 'dart:io';

String getBannerAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-1769089441329892/7136494074';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-1769089441329892/7136494074';
  }
  return null;
}

String getInterstitialAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-1769089441329892/3664346443';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-1769089441329892/3664346443';
  }
  return null;
}

String getRewardBasedVideoAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-1769089441329892/2592961447';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-1769089441329892/2592961447';
  }
  return null;
}
