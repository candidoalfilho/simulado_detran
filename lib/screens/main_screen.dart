import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:simulado_detran/ads/ad_state.dart';
import 'package:simulado_detran/widgets/category_item.dart';

import 'game_screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  BannerAd? banner = null;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        banner = BannerAd(
            adUnitId: adState.bannerAdUnitId,
            size: AdSize.banner,
            request: AdRequest(),
            listener: BannerAdListener(
              onAdLoaded: (_) {
                setState(() {
                  _isBannerAdReady = true;
                });
              },
              onAdFailedToLoad: (ad, err) {
                print('Failed to load a banner ad: ${err.message}');
                _isBannerAdReady = false;
                ad.dispose();
              },
            ))
          ..load();
        _isBannerAdReady = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple.shade800,
          title: Center(
            child:
                Text('Simulado DETRAN', style: TextStyle(color: Colors.white)),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(),
                CategoryItem(0),
                CategoryItem(1),
                CategoryItem(2),
              ],
            ),
          )),
          if (banner == null && !_isBannerAdReady)
            Container(
              height: 80,
              alignment: Alignment.center,
              child: SizedBox(),
            )
          else if (_isBannerAdReady)
            Container(
              height: 80,
              alignment: Alignment.center,
              child: AdWidget(ad: banner!),
            )
        ],
      ),
    );
  }
}
