import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/screen_list.dart';

import 'package:shoppingapp/widgets/drawer.dart';
import 'package:shoppingapp/widgets/features.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

List<Widget> featureIcons = const [
  Icon(Icons.language),
  Icon(Icons.verified),
  Icon(Icons.computer),
  Icon(Icons.headphones)
];

List<Widget> firstSentance = const [
  Text(
    'Custom domain name',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
  Text(
    'Verified seller badge',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
  Text(
    'Dukkan for PC',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
  Text(
    'Priority support',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
];

List<Widget> secondSentance = const [
  Text(
    'Get yourown custom domain and build.',
    style: TextStyle(color: Colors.grey),
  ),
  Text(
    'Get Green Verified badge under your ',
    style: TextStyle(color: Colors.grey),
  ),
  Text(
    'Access all the exclussive premium ',
    style: TextStyle(color: Colors.grey),
  ),
  Text(
    'Get your questions resolved with our',
    style: TextStyle(color: Colors.grey),
  ),
];

List<Widget> thirdSentance = const [
  Text(
    'Your brand on internet',
    style: TextStyle(color: Colors.grey),
  ),
  Text(
    'Store name and build trust',
    style: TextStyle(color: Colors.grey),
  ),
  Text(
    'On dukaan for PC.',
    style: TextStyle(color: Colors.grey),
  ),
  Text(
    'Priority customer support.',
    style: TextStyle(color: Colors.grey),
  ),
];

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  bool isVisible = false;
  final videoURL = "https://www.youtube.com/watch?v=1LjJVUJCBW0";
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoURL);
    _youtubeController = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int n = thirdSentance.length;
    //print(n);
    return Scaffold(
      //drawer: showDrawer(),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 200,
                    child: AppBar(
                      title: const Text('Dukaan Premiere'),
                      centerTitle: true,
                      elevation: 0.0,
                      leading: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ScreenList()),
                            );
                          },
                          icon: const Icon(Icons.arrow_back)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 100,
                    ),
                    child: SizedBox(
                      height: 200,
                      width: 340,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/logo.jpeg',
                                width: 400,
                                height: 80,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    'Get dukaan premium for just',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '4,999/year',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'All the features for scaling your',
                                    style: TextStyle(
                                        color: Colors.grey, letterSpacing: 1.5),
                                  ),
                                  Text('business',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          letterSpacing: 2)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    height: 50,
                    width: 30,
                  ),
                  Text(
                    'Features',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              for (int j = 0; j < n; j++)
                showFeatures(
                    first: firstSentance[j],
                    second: secondSentance[j],
                    third: thirdSentance[j],
                    iconImage: featureIcons[j]),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.grey,
              ),
              Row(
                children: const [
                  SizedBox(
                    height: 50,
                    width: 32,
                  ),
                  Text(
                    'What is Dukaan Premium?',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  YoutubePlayer(
                      width: 320,
                      controller: _youtubeController,
                      showVideoProgressIndicator: true),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                'Freequently asked questions',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 19,
                height: 10,
              ),
              const Text(
                'What type of businees can use dukaan \npremium ?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(
                width: 60,
              ),
              GestureDetector(
                onTap: () => setState(() {
                  isVisible = !isVisible;
                }),
                child: Icon(isVisible == true ? Icons.remove : Icons.add),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 23,
              ),
              Visibility(
                visible: isVisible,
                child: const Text(
                  'Dukaan is an easy to use platform to run,manage\nbusinessonline.You can  online store, add products,\nmanage,accept online payments,and do much more.\nIt’s the simple and fastest way to take your business.',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 19,
                height: 10,
              ),
              Text(
                'What is your refund policy ?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                width: 145,
              ),
              Icon(Icons.add),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 19,
                height: 10,
              ),
              Text(
                'Will there be an automatic charge after the\npaid trail ?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                width: 40,
              ),
              Icon(Icons.add),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 19,
                height: 10,
              ),
              Text(
                'What payment methods do you offer ?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                width: 71,
              ),
              Icon(Icons.add),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 19,
                height: 10,
              ),
              Text(
                'What happens when my free trail ends ?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                width: 59,
              ),
              Icon(Icons.add),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Row(
            children: const [
              SizedBox(
                width: 19,
                height: 10,
              ),
              Text(
                'What are the terms for the custom domain ?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                width: 29,
              ),
              Icon(Icons.add),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.grey,
          ),
          Row(
            children: const [
              SizedBox(
                height: 50,
                width: 20,
              ),
              Text(
                'Need Help ? Get in touch',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: SizedBox(
                        height: 90,
                        width: 160,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/icons/chat.png',
                                height: 30,
                                width: 20,
                                color: Colors.black,
                              ),
                              const Text('Live Chat')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                      ),
                      child: SizedBox(
                        height: 90,
                        width: 160,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/icons/phone.png',
                                height: 30,
                                width: 20,
                                color: Colors.black,
                              ),
                              const Text('Phone Call')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(170, 30),
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: const Text('Select Domain'),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(170, 30),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.all(0.0),
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: const Text('Get Premium'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
