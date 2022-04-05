// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:home_interfaces/page/feedback_ui.dart';
import 'package:home_interfaces/page/license_ui.dart';
import 'package:home_interfaces/page/loginscreen_ui.dart';
import 'package:home_interfaces/page/quizcrockerrange_ui.dart';
import 'package:home_interfaces/page/quizdanumvalley_ui.dart';
import 'package:home_interfaces/page/quizkinabalupark_ui.dart';
import 'package:home_interfaces/page/quizmaliaubasin_ui.dart';
import 'package:home_interfaces/page/quizsipadanmabulisland_ui.dart';
import 'package:home_interfaces/page/quizsukaurainforestlodge_ui.dart';
import 'package:home_interfaces/page/story_ui.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/link.dart';
import 'aboutus_ui.dart';
import 'profile_ui.dart';

//photo view widget
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import 'quizdesacattledairyfarm_ui.dart';
import 'quizimbakcanyon_ui.dart';
import 'quizkokolhill_ui.dart';
import 'quizselinganisland_ui.dart';
import 'quiztabinwildlife_ui.dart';
import 'rankingplaces_ui.dart';

class AppbeforeloginUI extends StatefulWidget {
  @override
  _AppbeforeloginUIState createState() => _AppbeforeloginUIState();
}

class _AppbeforeloginUIState extends State<AppbeforeloginUI> {
  int currentIndex = 0;
  final beforeloginscreens = [
    HomebeforeloginUI(),
    QuizbeforeloginUI(),
    QRScannerbeforeloginUI(),
    ProfilePagebeforeloginUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: beforeloginscreens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Places',
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.book_sharp),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'Scan',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors, prefer_const_constructors_in_immutables, duplicate_ignore, prefer_const_literals_to_create_immutables

class HomebeforeloginUI extends StatefulWidget {
  @override
  _HomebeforeloginState createState() => _HomebeforeloginState();
}

class _HomebeforeloginState extends State<HomebeforeloginUI> {
  final List<Container> RegisteredPlaces = [];

  var Place = [
    {
      "PlaceName": "Kiulu Valley",
      "PlaceTitle": "The Valley in The Mist",
      "PlacePicture": "Kiulu Valley.jpg",
      "PlacePicture2": "Kiulu Valley-2.jpg",
      "PlacePicture3": "Kiulu Valley-3.jpg",
      "BackgroundPicture": "background_kiuluvalley.jpeg",
      "PlaceStory":
          "Kiulu Valley is a small area in the District of Tuaran - the northwestern part of Sabah - with a population of over 2,000 people. Its name (Kiulu) was derived from a plant that is called Tulu, which is a small bamboo that commonly grows on the river banks. Agriculture is the main source of livelihood for local communities in Kiulu Valley - this includes rubber plantations, fruit orchards, paddy fields and mixed gardens (mostly vegetables, pineapples and ginger). Kiulu Valley is committed to using local resources (accommodation, activities and people), maintaining unique culture practices and developing rural tourism through training of hosts and linking homestays with surrounding products or activities. This is what makes Kiulu Valley unique and a great place for family outings, school field trips, camping and team building activities. Kiulu Valley is a real learning experience and it is one of those experiences that will leave a lasting memory."
    },
    {
      "PlaceName": "Crocker Range",
      "PlaceTitle": "A Biosphere Reserve by UNESCO",
      "PlacePicture": "Crocker Range-1.jpg",
      "PlacePicture2": "Crocker Range-2.jpg",
      "PlacePicture3": "Crocker Range-3.jpg",
      "BackgroundPicture": "background_crockerrange.jpg",
      "PlaceStory":
          "The Crocker Range National Park covers the north-south Crocker Range, of 1,200-1,800 metres mountains in Sabah, east Malaysia on the island of Borneo, which separate the western coastal plain with the rest of the state. Lying 300 metres above sea level, it is spread over 1,399 kilometres making it the largest protected park in all of Sabah. The Crocker Range has been under protection as a forest reserve since 1968 but was declared as a National Park in 1984 to protect its rich biodiversity and rare species of plants and wildlife, also in part to protect the natural freshwater reserve area. Crocker Range National Park receives a rainfall of 3,000-4,000 millimetres per year, making it one of the highest precipitation areas in Sabah. The water catchments in the park provide an indispensable water source for drinking, agriculture and industrial purposes, and to sustain the daily needs of more than one third of the population of Sabah."
    },
    {
      "PlaceName": "Danum Valley",
      "PlaceTitle": "The Last Undisturbed Rainforests",
      "PlacePicture": "Danum Valley-1.jpg",
      "PlacePicture2": "Danum Valley-2.jpg",
      "PlacePicture3": "Danum Valley-3.jpg",
      "BackgroundPicture": "background_danumvalley.jpg",
      "PlaceStory":
          "Danum Valley Conservation Area is a 438 square kilometres tract of relatively undisturbed lowland dipterocarp forest in Sabah, Malaysia. The area holds unique status in the sense that before it became a conservation area there were no human settlements within the area, meaning that hunting, logging and other human interference was non-existent, making the area almost unique. It is managed by Yayasan Sabah for conservation, research, education, and habitat restoration training purposes. Danum Valley Conservation Area is dominated by dipterocarp tress, with the canopy reaching a height of over 70 metres in some places. Some 90% of the Conservation Area is classified as dipterocarp forest, with the remaining 10% being low canopy, sub-montane forest mainly found on Mount Danum in the heart of the Conservation Area. "
    },
    {
      "PlaceName": "Kinabalu Park",
      "PlaceTitle": "UNESCO World Heritage Site",
      "PlacePicture": "Kinabalu Park-1.jpg",
      "PlacePicture2": "Kinabalu Park-2.jpg",
      "PlacePicture3": "Kinabalu Park-3.jpg",
      "BackgroundPicture": "background_kinabalupark.jpg",
      "PlaceStory":
          "Kinabalu Park, about 90 kilometres from Kota Kinabalu located in Kundasang, is one of the world's most significant natural environments.The Park is located at 1,585 metres above sea level and is the main starting point for the summit trail that leads to the top of Mount Kinabalu. It covers an area of 75,370 hectares surrounding Mount Kinabalu, the highest mountain in Southeast Asia with 4,095.2 metres height. Kinabalu Park was declared a UNESCO World Heritage site in 2000 – the first in Malaysia for its “outstanding universal values” and its role as one of the most important Biological Sites in the world. The presence of Mount Kinabalu is one of the contributing factors to the wide variety of animal, bird, insect and plant life found in the park. The terrain ranges from lush, green rainforest at the park’s lowest altitudes, while further up the mountain, rhodendron and coniferous forest is prevalent. At the highest altitudes, stunted plant growth and small marsupials survive in a harsh environment. Orchids and carnivorous pitcher plants are among the park’s most famous plants, although they are rare along the park’s most worn tourist trails. However, they are all on display in a botanical walk near the park headquarters where visitors can view some of the area’s most beautiful flora."
    },
    {
      "PlaceName": "Maliau Basin",
      "PlaceTitle": "Sabah's Lost World",
      "PlacePicture": "Maliau Basin-1.jpg",
      "PlacePicture2": "Maliau Basin-2.jpg",
      "PlacePicture3": "Maliau Basin-3.jpg",
      "BackgroundPicture": "background_maliaubasin.jpg",
      "PlaceStory":
          "Maliau Basin is Southeast Asia’s ‘Lost World’, an area almost the size of Singapore, home to one of the most diverse collections of flora and fauna on earth. Maliau Basin is located in the southern region of central Sabah, about 40 kilometres north of the Kalimantan border. It is accessible via the towns of Keningau and Tawau, both four to five hour drives away. Maliau Basin has remained largely untouched and is a single huge water catchment, drained by one river only – the Maliau River, which flows through a gorge in the southeast of the Basin, joining the Kuamut River and eventually the Kinabatangan – Sabah’s largest and most important waterway. Major expeditions discovered a distinct and diverse flora of over 1,800 species, including at least 6 types of pitcher plant and more 80 species of orchid, several of which are new records for Sabah. The rare Rafflesia tengku-adlinii has also been found in Maliau Basin, one of only two known localities in Sabah, and two species completely new to science, a tree and a moss, have so far been discovered. The main forest area is dominated by majestic Agathis trees, rare montane heath forest and precious lowland and hill dipterocarp forest."
    },
    {
      "PlaceName": "Sukau Rainforest Lodge",
      "PlaceTitle": "A Charter Member of NatGeo Unique Lodges of The World",
      "PlacePicture": "Sukau Rainforest Lodge-1.jpg",
      "PlacePicture2": "Sukau Rainforest Lodge-2.jpg",
      "PlacePicture3": "Sukau Rainforest Lodge-3.jpg",
      "BackgroundPicture": "background_sukaurainforestlodge.jpg",
      "PlaceStory":
          "Built in 1995, The Sukau Rainforest Lodge is perched on the bank of the Kinabatangan River in Borneo, one of Asia's most important waterways. Sukau was the first lodge in the area designed based on ecotourism principles. It is built on stilts using Borneo hardwood species and is completely self-sufficient in water, harvesting rainwater and solar energy for hot water heating. Electric motors are used for river safari tours to wildlife areas to minimise air and noise pollution and reduce stress to the wildlife. Every room has an attached bathroom with solar hot water shower while electricity is supplied at night by a generator set. Facilities included – a bar lounge, gift shop, Gomantong Hall meeting place, education centre, Hornbill Boardwalk with two elephant passes, three open decks for wildlife viewing, an enclosed garden, a riverside Melapi restaurant, open sun-deck, river jetty and a dip pool. The lodge provides a great wildlife experience to visitors while preserving the Kinabatangan flood-plain. At 560 kilometres, Kinabatangan River is the longest river in Sabah, and second in Malaysia. The flood-plain of the Kinabatangan is one of the most exceptional areas in eastern Malaysia. The Lower Kinabatangan Wildlife Sanctuary is known to have among the highest concentration of wildlife in Borneo. Early dawn and late afternoon river cruises provide the perfect opportunity to see 10 primate species – usually the Proboscis Monkeys, Orang Utan and Borneon Gibbon. Among the 50 recorded mammal’s species found here including the Borneon Pygmy Elephant and Bearded Pig."
    },
    {
      "PlaceName": "Sipadan-Mabul Island",
      "PlaceTitle": "World's Top Dive Destinations",
      "PlacePicture": "Mabul Island-1.jpg",
      "PlacePicture2": "Sipadan Island-2.jpg",
      "PlacePicture3": "Sipadan Island-3.jpg",
      "BackgroundPicture": "background_mabulisland.jpg",
      "PlaceStory":
          "The late Jacques Cousteau, a world-renowned oceanographer, once described Sipadan Island as an untouched piece of art while divers around the world have voted it as one of the top five dive sites in the world. Rising 700 metres from the sea floor and at only 12 hectare, Malaysia's sole oceanic island is very small in size. A 25-minute walk is all that is needed to circle the island on foot, but the huge amount of diverse marine life it attracts from the blackness of the open sea is simply mind-blowing. Surrounded by crystal clear waters, this crown jewel is a treasure trove of some of the most amazing species out there. The dense vegetation on Sipadan supports a large variety of tropical birds that include sea eagles, kingfishers, sunbirds, starlings and wood pigeons. Exotic crustaceans including the amazing coconut crab roam the beaches and scurry among the undergrowth. Encounters with turtles, resident schools of jacks, bumphead parrotfish and barracudas are almost assured when diving around the tiny coral island. In addition, Sipadan has ten dive sites, including Barracuda Point, Coral Garden, The Drop Off, Hanging Gardens, Midreef, South Point, Staghorn Crest, Turtle Cavern, Turtle Patch and Whitetip Avenue."
    },
    {
      "PlaceName": "Selingan Island",
      "PlaceTitle": "The Safe Heaven for Turtles",
      "PlacePicture": "Selingan Island-1.jpg",
      "PlacePicture2": "Selingan Island-2.jpg",
      "PlacePicture3": "Selingan Island-3.jpg",
      "BackgroundPicture": "background_selinganisland.jpeg",
      "PlaceStory":
          "A designated National Park, Selingan Island is popular with tourists and turtles alike. Located approximately 40 kilometres north of Sandakan in the Sulu Sea, the island is a safe haven for the endangered green and hawksbill turtles and gives you the rare opportunity to watch turtle landings. As turtle landings usually occur after dusk, an overnight stay would be the best plan to see the turtles as they come ashore to lay their eggs. Turtles lay their eggs throughout the year, but the best time to head there is between July and October when the sea is calmer. Observe the collection of eggs, tagging of mother turtles and releasing of baby turtles into the sea. During the day, visitors can resort to other activities such as scuba diving and snorkeling."
    },
    {
      "PlaceName": "Tabin Wildlife",
      "PlaceTitle": "Nature and Wildlife Reserve",
      "PlacePicture": "Tabin Wildlife-1.jpg",
      "PlacePicture2": "Tabin Wildlife-2.jpg",
      "PlacePicture3": "Tabin Wildlife-3.jpg",
      "BackgroundPicture": "background_tabinwildlife.jpg",
      "PlaceStory":
          "Tabin Wildlife is a nature preserve in Sabah, eastern Malaysia, on the island of Borneo. Tabin comprises a rectangular area of approximately 122,539 hectares in the centre of the Dent Peninsula, northeast of Lahad Datu town. Created in the year 1984, Tabin has been declared a Wildlife Reserve primarily on account of the large number of animals inhabiting its forests, some of which are highly endangered. The three largest mammals of Sabah, namely Borneo Pygmy Elephant, Sumatran Rhinoceros and Tembadau are all found within the reserve; nine species of primate are present, as well as three species of cats all of which are on the protected wildlife list. Of bird species, 42 families representing 220 species have been recorded. Covered in euryspecies lowland rainforest, Tabin nurtures a colossal number of tropical plants; some of which are rich in medicinal and therapeutic values. Since the availability of accommodation provided by Tabin Wildlife Resort in 2004, Tabin has gained popularity to be one of the best places in Sabah to observe the rich bio-diversity of nature and to part-take in nature-based activities. One of the highlights of Tabin being the active and mineral-rich mud volcanoes, attracting frequent visits by wildlife for their mineral intake and present an ideal platform for wildlife observation and bird-watching. Amongst the popular activities in Tabin are jungle trekking, night safari, night walk, wildlife spotting, birdwatching, and rainforest education."
    },
    {
      "PlaceName": "Imbak Canyon",
      "PlaceTitle": "Sabah's Botanical Canyon",
      "PlacePicture": "Imbak Canyon-1.jpg",
      "PlacePicture2": "Imbak Canyon-2.jpg",
      "PlacePicture3": "Imbak Canyon-3.jpg",
      "BackgroundPicture": "background_imbakcanyon.jpg",
      "PlaceStory":
          "Imbak Canyon is a hidden valley, nestled between steep sandstone cliffs that reach over 1,000 metres high! It is located deep in the heart of Sabah, some 300 kilometres away from the capital, Kota Kinabalu. Ancient tracts of rainforest about 100 million years old – some of the oldest in the world – make their home in this stretch of land, acting as an essential wildlife corridor that links Danum Valley with Maliau Basin. This fact, coupled with the area’s rich biodiversity of plants and wildlife, have earned the Canyon its status as a Class 1 (Protection) Forest Reserve in 2009. An incredible sanctuary for some of Borneo’s rarest species, the Imbak Canyon is home to endangered Bornean Pygmy Elephants, Langurs, Western Tarsiers, Bearded Pigs, Proboscis Monkeys, and the iconic Orangutan, among others. It’s also a premier birdwatching destination, with over 250 species of birds including Hornbills and Bornean Bristleheads making their home here! A great number of exotic plants can also be found in the valley, such as the carnivorous Nepenthes or Pitcher Plants and rare species of wild Orchids. Though lesser known compared to the other protected areas In Sabah, the Imbak Canyon is quickly growing to be an important destination for nature lovers and researchers alike, culminating in the completion of the Imbak Canyon Studies Centre (ICSC) in 2016, with an extensive array of facilities at its disposal. Its beautiful rainforest scenery, decadently rich biodiversity, and excellent facilities make the Imbak Canyon perfect for both adventurers and scholars who can appreciate the valley’s bountiful gifts."
    },
    {
      "PlaceName": "Kokol Hill Elf",
      "PlaceTitle": "A Piece Paradise of Sabah",
      "PlacePicture": "kokol hill-2.jpg",
      "PlacePicture2": "kokol hill-3.jpg",
      "PlacePicture3": "kokol hill-4.jpg",
      "BackgroundPicture": "background_kokolhill.jpg",
      "PlaceStory":
          "Kokol Hill is a favourite place for locals around Kota Kinabalu to relax and enjoy the wonderful scenery of Kota Kinabalu city. Kokol Hill is located at Menggatal and because of its strategic location, Kokol Hill offers Sunrise view of Mount Kinabalu and Sunset view overlooking the city. It took only 45 minutes’ drive from Kota Kinabalu city center and you will be surrounded by nature and fresh cool air. Perched above 800 meters high, this hilly retreat overlooks the city, sea, islands of Tunku Abdul Rahman Marine Park, Sepanggar Bay and other elements along the western coastline. Over the years, Resorts, restaurant, and guesthouse opening around Kokol Hill area offering rooms and foods for visiting guest with the amazing view of Kota Kinabalu City. "
    },
    {
      "PlaceName": "Desa Cattle Dairy Farm",
      "PlaceTitle": "The Little New Zealand of Sabah",
      "PlacePicture": "Desa Cattle Dairy Farm.jpg",
      "PlacePicture2": "2-Desa Cattle Dairy Farm.jpg",
      "PlacePicture3": "3-Desa Cattle Dairy Farm.jpg",
      "BackgroundPicture": "background_desacattledairyfarm.jpg",
      "PlaceStory":
          "Located at the foothill of Mount Kinabalu, Desa Cattle Dairy Farm offers one of the most amazing scenery one could envision. Often chosen as a wedding photography destination, with the majestic Mount Kinabalu overlooking beautiful green pastures, the scenery is breathtaking, not forgetting the cool breeze that Kundasang has to offer. The real attraction here is the cattle farm, producing about 900,00 litres of milk per year. The farm is 199 hectars and most of the milking cows are Friesians, the highest milk producers of all cattle breeds. It is an ideal destination for the whole family, where there are activities, such as feeding the calves with bottled milk, feeding goats with grass, how milk is processed as well as the milking process are available for all. If you have ever wondered how milk is made, Desa Cattle Farm is the place for you."
    },
  ];

  _makelist() async {
    for (var i = 0; i < Place.length; i++) {
      final TourismPlace = Place[i];
      final String? TourismTitle = TourismPlace["PlaceTitle"];
      final String? TourismPicture = TourismPlace["PlacePicture"];
      final String? TourismPicture2 = TourismPlace["PlacePicture2"];
      final String? TourismPicture3 = TourismPlace["PlacePicture3"];
      final String? TourismStory = TourismPlace["PlaceStory"];
      final String? BackgroundStory = TourismPlace["BackgroundPicture"];

      RegisteredPlaces.add(Container(
        color: Colors.lightBlueAccent,
        padding: EdgeInsets.all(9),
        child: Card(
          child: Column(
            children: <Widget>[
              Hero(
                tag: TourismPlace['PlaceName']!,
                child: Material(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            PlaceDetailBeforeLogin(
                              PlaceName: TourismPlace["PlaceName"]!,
                              PlaceTitle: TourismTitle!,
                              PlacePicture: TourismPicture!,
                              PlacePicture2: TourismPicture2!,
                              PlacePicture3: TourismPicture3!,
                              PlaceStory: TourismStory!,
                              BackgroundPicture: BackgroundStory!,
                            ))),
                    child: Image.asset(
                      "img/background_ui/$BackgroundStory",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.white38,
                child: Center(
                  child: Text(TourismPlace['PlaceName']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal)),
                ),
              ))
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _makelist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsUI()));
                },
                icon: Image.asset('img/logo/logo.png'),
                iconSize: 50,
              ),
              Center(
                child: Text(
                  "Sabah Tourism",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              IconButton(
                icon: Icon(Icons.person),
                iconSize: 40,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePagebeforeloginUI()));
                },
              ),
            ],
          )),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            Expanded(
                flex: 0,
                child: Padding(
                    padding: EdgeInsets.only(
                  top: 30,
                ))),
            Expanded(
                flex: 0,
                child: Center(
                    child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 13,
                    )),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Popular Places in Sabah',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ))),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 3, children: RegisteredPlaces))
          ],
        ),
      ),
    );
  }
}
//Placedetailbeforelogin

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, non_constant_identifier_names, duplicate_ignore, must_be_immutable, dead_code, prefer_typing_uninitialized_variables, avoid_print

class PlaceDetailBeforeLogin extends StatefulWidget {
  PlaceDetailBeforeLogin(
      {required this.PlaceName,
      required this.PlaceTitle,
      required this.PlacePicture,
      required this.PlacePicture2,
      required this.PlacePicture3,
      required this.PlaceStory,
      required this.BackgroundPicture});

  final String PlaceName;
  final String PlaceTitle;
  final String PlacePicture;
  final String PlacePicture2;
  final String PlacePicture3;
  final String PlaceStory;
  final String BackgroundPicture;

  @override
  State<PlaceDetailBeforeLogin> createState() => _PlaceDetailBeforeLoginState();
}

class _PlaceDetailBeforeLoginState extends State<PlaceDetailBeforeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        // ignore: prefer_const_constructors
        title: Center(
          // ignore: prefer_const_constructors
          child: Text(
            "Sabah Tourism",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
        actions: [
          Icon(
            Icons.person,
            size: 50.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 250,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage(
                      "img/background_ui/${widget.BackgroundPicture}"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Center(
                    child: Text(
                      widget.PlaceName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3
                          ..color = Colors.black,
                      ),
                    ),
                  ),
                  // Solid text as fill.
                  Center(
                    child: Text(
                      widget.PlaceName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 153,
              ),
              Row(
                children: [
                  PictureCollection(
                      pic1: "img/places/${widget.PlacePicture}",
                      pic2: "img/places/${widget.PlacePicture2}",
                      pic3: "img/places/${widget.PlacePicture3}"),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                widget.PlaceTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.PlaceStory,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class PictureCollection extends StatelessWidget {
  PictureCollection({
    required this.pic1,
    required this.pic2,
    required this.pic3,
  });

  final String pic1;
  final String pic2;
  final String pic3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                margin: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage(pic1),
                  fit: BoxFit.fill,
                  width: 80,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  child: Image(
                      image: AssetImage(pic2),
                      fit: BoxFit.cover,
                      width: 80,
                      height: 100)),
            ),
            Expanded(
                flex: 1,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    margin: EdgeInsets.all(5),
                    child: Image(
                        image: AssetImage(pic3),
                        fit: BoxFit.fill,
                        width: 80,
                        height: 100))),
            SizedBox(
              width: 10,
            )
          ],
        ));
  }
}

// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

class QuizbeforeloginUI extends StatefulWidget {
  const QuizbeforeloginUI({Key? key}) : super(key: key);

  @override
  _QuizbeforeloginUIState createState() => _QuizbeforeloginUIState();
}

class _QuizbeforeloginUIState extends State<QuizbeforeloginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsUI()));
                },
                icon: Image.asset('img/logo/logo.png'),
                iconSize: 50,
              ),
              Center(
                child: Text(
                  "Quiz",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              IconButton(
                icon: Icon(Icons.person),
                iconSize: 40,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePagebeforeloginUI()));
                },
              ),
            ],
          )),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Try attempt this quizes',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_kiuluvalley.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Kiulu Valley.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizKiuluValleyBeforeLoginUI()));
                                  },
                                  child: Text(
                                    'Kiulu Valley',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_crockerrange.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Crocker Range-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizCrockerRangeUI()));
                                  },
                                  child: Text(
                                    'Crocker Range',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_danumvalley.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Danum Valley-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizDanumValleyUI()));
                                  },
                                  child: Text(
                                    'Danum Valley',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_kinabalupark.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Kinabalu Park-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizKinabaluParkUI()));
                                  },
                                  child: Text(
                                    'Kinabalu Park',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_maliaubasin.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Maliau Basin-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizMaliauBasinUI()));
                                  },
                                  child: Text(
                                    'Maliau Basin',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_sukaurainforestlodge.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Sukau Rainforest Lodge-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizSukauRainforestLodgeUI()));
                                  },
                                  child: Text(
                                    'Sukau Rainforest Lodge',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                    textAlign: TextAlign.center,
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_mabulisland.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Mabul Island-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizMabulIslandUI()));
                                  },
                                  child: Text(
                                    'Sipadan-Mabul Island',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_selinganisland.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Selingan Island-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizSelinganIslandUI()));
                                  },
                                  child: Text(
                                    'Selingan Island',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_tabinwildlife.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Tabin Wildlife-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizTabinWildlifeUI()));
                                  },
                                  child: Text(
                                    'Tabin Wildlife',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_imbakcanyon.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Imbak Canyon-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizImbakCanyonUI()));
                                  },
                                  child: Text(
                                    'Imbak Canyon',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_kokolhill.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/kokol hill-3.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizKokolHillUI()));
                                  },
                                  child: Text(
                                    'Kokol Hill Elf',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_desacattledairyfarm.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/2-Desa Cattle Dairy Farm.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizDesaCattleDairyFarmUI()));
                                  },
                                  child: Text(
                                    'Desa Cattle Dairy Farm',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
        ],
      ),
    );
  }
}

//Kiulu Valley Quiz Before Login
// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, non_constant_identifier_names, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, deprecated_member_use, unused_local_variable

// ignore_for_file: use_key_in_widget_constructors

class QuizKiuluValleyBeforeLoginUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizKiuluValleyBeforeLoginUIState();
  }
}

class _QuizKiuluValleyBeforeLoginUIState
    extends State<QuizKiuluValleyBeforeLoginUI> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions_kiuluvalley = const [
    {
      'questionText': 'Q1. Where is Kiulu Valley located?',
      "questionPic": "img/quiz/kiuluvalley/q1.jpg",
      'answers': [
        {'text': 'West-east coast of Sabah', 'score': 0},
        {'text': 'East-west coast of Sabah', 'score': 0},
        {'text': 'North-west coast of Sabah', 'score': 20},
        {'text': 'South-east coast of Sabah', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Kiulu Valley is better known as?',
      "questionPic": "img/quiz/kiuluvalley/q2.jpg",
      'answers': [
        {'text': 'Kiulu Countryside', 'score': 0},
        {'text': 'Kiulu Reservation', 'score': 0},
        {'text': 'The Valley of the dawn', 'score': 0},
        {'text': 'The Valley in The Mist', 'score': 20},
      ],
    },
    {
      'questionText': ' Q3. Why is it called Kiulu?',
      "questionPic": "img/quiz/kiuluvalley/q3.jpg",
      'answers': [
        {'text': 'A plant that is called Tulu', 'score': 20},
        {'text': 'Given by the village chief', 'score': 0},
        {'text': 'From hereditary stories', 'score': 0},
        {'text': 'Inspiration from the valley stream', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. What is unique about Kiulu Valley?',
      "questionPic": "img/quiz/kiuluvalley/q4.jpg",
      'answers': [
        {'text': 'Population of over 2,000 people', 'score': 0},
        {'text': 'Have mixed gardens', 'score': 0},
        {'text': 'Maintaining unique culture practices', 'score': 20},
        {'text': 'Developing rural tourism', 'score': 0},
      ],
    },
    {
      'questionText': 'Q5. Below are activity provided in Kiulu Valley except',
      "questionPic": "img/quiz/kiuluvalley/q5.jpg",
      'answers': [
        {'text': 'Kiulu Junggle Trail', 'score': 20},
        {'text': 'Kiulu Bamboo Village Stay', 'score': 0},
        {'text': 'Kiulu Countryside on Quad Biki', 'score': 0},
        {'text': 'Kiulu Bamboo Village Tour', 'score': 0},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions_kiuluvalley.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  GradientColors.aqua[1],
                  GradientColors.malibuBeach[1],
                  GradientColors.malibuBeach[0],
                ])),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: GradientColors.happyFisher[1], width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text(
                      'Kiulu Valley',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: _questionIndex < questions_kiuluvalley.length
                          ? Quiz(
                              answerQuestion: _answerQuestion,
                              questionIndex: _questionIndex,
                              questions: questions_kiuluvalley,
                              questionspic: questions_kiuluvalley,
                            ) //Quiz
                          : Result(_totalScore, _resetQuiz),
                    ),
                  ],
                ),
              ],
            )),

        //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final List<Map<String, Object>> questionspic;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionspic,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.9), BlendMode.dstATop),
                image: AssetImage('img/quizbackground/quizbackground.png'),
                fit: BoxFit.fill,
              ),
              border:
                  Border.all(color: GradientColors.happyFisher[1], width: 5),
              borderRadius: BorderRadius.circular(4),
            ),
            width: 400,
            height: 300,
            child: Center(
                child: Column(
              children: [
                QuestionPic(
                    questions[questionIndex]['questionPic']?.toString() ?? ''),
                Question(
                  questions[questionIndex]['questionText']?.toString() ?? '',
                ),
              ],
            ))), //Question

        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']),
              answer['text']?.toString() ?? '');
        }).toList(),
      ],
    ); //Column
  }
}

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15, left: 5, right: 5),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}

class QuestionPic extends StatelessWidget {
  final String questionPic;

  QuestionPic(this.questionPic);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
        ),
        margin: EdgeInsets.only(top: 15),
        child: Image(
          image: AssetImage(questionPic),
          fit: BoxFit.cover,
        ) //Text
        ); //Container
  }
}

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        color: Colors.white,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore == 100) {
      resultText = 'Excellent!';
      print(resultScore);
    } else if (resultScore >= 80) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 60) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 40) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 20) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  color: Colors.lightBlue,
                ),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.only(top: 50),
            height: 480,
            child: Center(
              child: Column(
                children: [
                  Image(width: 160, image: AssetImage('img/logo/logo.png')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    resultPhrase,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ), //Text
                  Text(
                    'Score ' '$resultScore',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ), //Text
                  FlatButton(
                    child: Text(
                      'Restart Quiz!',
                      style: TextStyle(fontSize: 16),
                    ), //Text
                    textColor: Colors.redAccent,
                    onPressed: resetHandler,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        border: Border.all(
                          width: 2,
                          color: Colors.black87,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppbeforeloginUI()));
                        },
                        child: Text(
                          'Home',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                  ),
                ],
              ),
            ),
          )

          //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, import_of_legacy_library_into_null_safe, avoid_print, prefer_const_literals_to_create_immutables, deprecated_member_use

class QRScannerbeforeloginUI extends StatefulWidget {
  @override
  State<QRScannerbeforeloginUI> createState() => _QRScannerbeforeloginUIState();
}

class _QRScannerbeforeloginUIState extends State<QRScannerbeforeloginUI> {
  String qrString = "Not Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsUI()));
                },
                icon: Image.asset('img/logo/logo.png'),
                iconSize: 50,
              ),
              Center(
                child: Text(
                  "Scan Place",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              IconButton(
                icon: Icon(Icons.person),
                iconSize: 40,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePagebeforeloginUI()));
                },
              ),
            ],
          )),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              color: Colors.lightBlueAccent,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                      child: Column(children: [
                    Container(
                        color: Colors.lightBlueAccent,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: const DecorationImage(
                                    image: AssetImage('img/tourismscan.png'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: Center(
                                    child: Image(
                                  width: 200,
                                  image: AssetImage(
                                    'img/logo/logo.png',
                                  ),
                                )),
                                height: 250,
                              ),
                              Expanded(
                                  flex: 0,
                                  child: Center(
                                    child: Container(
                                      color: Colors.lightBlueAccent,
                                      child: Column(
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10)),
                                          Expanded(
                                              flex: 0,
                                              child: Container(
                                                  margin: EdgeInsets.all(10),
                                                  child: Center(
                                                      child: Text(
                                                    'CHECK-IN',
                                                    style:
                                                        TextStyle(fontSize: 30),
                                                  )))),
                                          Expanded(
                                              flex: 0,
                                              child: Container(
                                                  margin: EdgeInsets.all(5),
                                                  child: Center(
                                                      child: Text(
                                                    'Scan the qr code which indicate that you arrived there by using our app!',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  )))),
                                          Container(
                                              height: 135,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      border: Border.all(
                                                        color: Colors.black45,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  margin: EdgeInsets.all(10),
                                                  child: Center(
                                                      child: Text(
                                                    qrString,
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        fontFamily: ''),
                                                  )))),
                                          Expanded(
                                              flex: 0,
                                              child: SizedBox(
                                                width: double.infinity,

                                                child: RaisedButton(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    16.0))),
                                                    color: Colors.white,
                                                    textColor: Colors.black,
                                                    child: Text('Scan'),
                                                    onPressed:
                                                        () {}), //RaisedButton
                                              ))
                                        ],
                                      ),
                                    ),
                                  )),
                            ]))
                  ])),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            right: 20,
            bottom: 10,
            child: Card(
              elevation: 10,
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.height * .90,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.72,
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: GradientColors.malibuBeach[0],
                                  width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_add_alt_outlined,
                                color: Colors.blueAccent,
                                size: 45,
                              ),
                              Text("Please Sign In First"),
                              SizedBox(
                                child: Padding(padding: EdgeInsets.all(5)),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      side: BorderSide(
                                          width: 1.5, color: Colors.blueAccent),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0))),
                                      primary: GradientColors.malibuBeach[1],
                                      onPrimary: Colors.black),
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: file_names
// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_renaming_method_parameters, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, deprecated_member_use, sized_box_for_whitespace

// ignore: file_names
// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_renaming_method_parameters, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, deprecated_member_use, sized_box_for_whitespace

class ProfilePagebeforeloginUI extends StatefulWidget {
  @override
  _ProfilePagebeforeloginUIState createState() =>
      _ProfilePagebeforeloginUIState();
}

class _ProfilePagebeforeloginUIState extends State<ProfilePagebeforeloginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blueAccent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUsUI()));
                  },
                  icon: Image.asset('img/logo/logo.png'),
                  iconSize: 50,
                ),
                Spacer(),
                Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
                Spacer(),
                Spacer(),
              ],
            )),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              child: Container(
                color: Colors.lightBlueAccent,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 50),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 70,
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8)),
                                            Icon(
                                              Icons.edit,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Container(
                                    child: Center(
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.black87,
                                                    width: 1.5),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            width: 360,
                                            height: 100,
                                            child: RichText(
                                              text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "User Details\n",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: "Name: ",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: "\n",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: "Email: ",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: "\n",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: "Phone Number: ",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                    ),
                                                    TextSpan(
                                                      text: "\n",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                            ))),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Card(
                                              elevation: 5,
                                              child: InkWell(
                                                onTap: () {
                                                  print('License Term Pressed');
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              LicenseTerm()));
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.book,
                                                        color: Colors.blue,
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        'License Term',
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Card(
                                              elevation: 5,
                                              child: InkWell(
                                                onTap: () {
                                                  print('Feedback Pressed');
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              FeedbackBtn()));
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.feed,
                                                        color: Colors.blue,
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        'Feedback',
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Card(
                                              elevation: 5,
                                              child: InkWell(
                                                onTap: () {
                                                  print('Feedback Pressed');
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              FeedbackBtn()));
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.feed,
                                                        color: Colors.blue,
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        'Log Out',
                                                        style: TextStyle(
                                                            fontSize: 18),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 20,
              right: 20,
              bottom: 20,
              child: Card(
                elevation: 10,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: MediaQuery.of(context).size.height * .90,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.72,
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: GradientColors.malibuBeach[0],
                                    width: 1.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_add_alt_outlined,
                                  color: Colors.blueAccent,
                                  size: 45,
                                ),
                                Text("Please Sign In First"),
                                SizedBox(
                                  child: Padding(padding: EdgeInsets.all(5)),
                                ),
                                Container(
                                  width: 160,
                                  height: 35,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: BorderSide(
                                            width: 1.5,
                                            color: Colors.blueAccent),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15.0))),
                                        primary: GradientColors.malibuBeach[1],
                                        onPrimary: Colors.black),
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen()));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
