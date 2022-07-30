// // ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors, prefer_const_constructors_in_immutables, duplicate_ignore, prefer_const_literals_to_create_immutables

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:home_interfaces/model/story_model.dart';
// import 'package:home_interfaces/model/user_model.dart';
// import 'package:home_interfaces/page/aboutus_ui.dart';

// import 'story_ui.dart';

// class HomeUI extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<HomeUI> {
//   User? user = FirebaseAuth.instance.currentUser;
//   UserModel loggedInUser = UserModel();
//   StoryModel listplace = StoryModel();

//   final List<Container> RegisteredPlaces = [];

//   var Place = [
//     {
//       "PlaceName": "Kiulu Valley",
//       "PlaceTitle": "The Valley in The Mist",
//       "PlacePicture": "Kiulu Valley.jpg",
//       "PlacePicture2": "Kiulu Valley-2.jpg",
//       "PlacePicture3": "Kiulu Valley-3.jpg",
//       "BackgroundPicture": "background_kiuluvalley.jpeg",
//       "PlaceStory":
//           "Kiulu Valley is a small area in the District of Tuaran - the northwestern part of Sabah - with a population of over 2,000 people. Its name (Kiulu) was derived from a plant that is called Tulu, which is a small bamboo that commonly grows on the river banks. Agriculture is the main source of livelihood for local communities in Kiulu Valley - this includes rubber plantations, fruit orchards, paddy fields and mixed gardens (mostly vegetables, pineapples and ginger). Kiulu Valley is committed to using local resources (accommodation, activities and people), maintaining unique culture practices and developing rural tourism through training of hosts and linking homestays with surrounding products or activities. This is what makes Kiulu Valley unique and a great place for family outings, school field trips, camping and team building activities. Kiulu Valley is a real learning experience and it is one of those experiences that will leave a lasting memory.",
//       "Tour": "Bicycle Rental, Quad Biking, Jungle Trekking, Cultural Demo",
//       "Accomodation":
//           "The Fig Tree, Camp site at Kiulu Farmstay, Camp beds at Kiulu Farmstay",
//       "Travel": "53 min (42.0 km) from Kota Kinabalu",
//       "Reference": "https://www.borneoecotours.com/attractions/kiulu-valley",
//     },
//     {
//       "PlaceName": "Crocker Range",
//       "PlaceTitle": "A Biosphere Reserve by UNESCO",
//       "PlacePicture": "Crocker Range-1.jpg",
//       "PlacePicture2": "Crocker Range-2.jpg",
//       "PlacePicture3": "Crocker Range-3.jpg",
//       "BackgroundPicture": "background_crockerrange.jpg",
//       "PlaceStory":
//           "The Crocker Range National Park covers the north-south Crocker Range, of 1,200-1,800 metres mountains in Sabah, east Malaysia on the island of Borneo, which separate the western coastal plain with the rest of the state. Lying 300 metres above sea level, it is spread over 1,399 kilometres making it the largest protected park in all of Sabah. The Crocker Range has been under protection as a forest reserve since 1968 but was declared as a National Park in 1984 to protect its rich biodiversity and rare species of plants and wildlife, also in part to protect the natural freshwater reserve area. Crocker Range National Park receives a rainfall of 3,000-4,000 millimetres per year, making it one of the highest precipitation areas in Sabah. The water catchments in the park provide an indispensable water source for drinking, agriculture and industrial purposes, and to sustain the daily needs of more than one third of the population of Sabah.",
//       "Tour": "Crocker Range Eco Trek",
//       "Accomodation":
//           "Borneo Kiim Resort, Tandarason Resort and Country Club, Tambunan Nature Lodge. Padi View Resthouse",
//       "Travel": "1 hr 59 min (89.3 km) from Kota Kinabalu",
//       "Reference": "https://www.borneoecotours.com/attractions/crocker-range",
//     },
//     {
//       "PlaceName": "Danum Valley",
//       "PlaceTitle": "The Last Undisturbed Rainforests",
//       "PlacePicture": "Danum Valley-1.jpg",
//       "PlacePicture2": "Danum Valley-2.jpg",
//       "PlacePicture3": "Danum Valley-3.jpg",
//       "BackgroundPicture": "background_danumvalley.jpg",
//       "PlaceStory":
//           "Danum Valley Conservation Area is a 438 square kilometres tract of relatively undisturbed lowland dipterocarp forest in Sabah, Malaysia. The area holds unique status in the sense that before it became a conservation area there were no human settlements within the area, meaning that hunting, logging and other human interference was non-existent, making the area almost unique. It is managed by Yayasan Sabah for conservation, research, education, and habitat restoration training purposes. Danum Valley Conservation Area is dominated by dipterocarp tress, with the canopy reaching a height of over 70 metres in some places. Some 90% of the Conservation Area is classified as dipterocarp forest, with the remaining 10% being low canopy, sub-montane forest mainly found on Mount Danum in the heart of the Conservation Area. ",
//       "Tour":
//           "Borneo Rainforest Lodge, River and Rainforest, Kawag Nature Lodge, Danum Valley Field Centre, Sabah Wildlife Safari, Borneo Big 5",
//       "Accomodation":
//           "DANUM VALLEY FIELD CENTRE, INFAPRO, BORNEO RAINFOREST LODGE",
//       "Travel": " 2 hr 30 min (212 km) from Kota Kinabalu",
//       "Reference": "https://www.borneoecotours.com/attractions/danum-valley",
//     },
//     {
//       "PlaceName": "Kinabalu Park",
//       "PlaceTitle": "UNESCO World Heritage Site",
//       "PlacePicture": "Kinabalu Park-1.jpg",
//       "PlacePicture2": "Kinabalu Park-2.jpg",
//       "PlacePicture3": "Kinabalu Park-3.jpg",
//       "BackgroundPicture": "background_kinabalupark.jpg",
//       "PlaceStory":
//           "Kinabalu Park, about 90 kilometres from Kota Kinabalu located in Kundasang, is one of the world's most significant natural environments.The Park is located at 1,585 metres above sea level and is the main starting point for the summit trail that leads to the top of Mount Kinabalu. It covers an area of 75,370 hectares surrounding Mount Kinabalu, the highest mountain in Southeast Asia with 4,095.2 metres height. Kinabalu Park was declared a UNESCO World Heritage site in 2000 – the first in Malaysia for its “outstanding universal values” and its role as one of the most important Biological Sites in the world. The presence of Mount Kinabalu is one of the contributing factors to the wide variety of animal, bird, insect and plant life found in the park. The terrain ranges from lush, green rainforest at the park’s lowest altitudes, while further up the mountain, rhodendron and coniferous forest is prevalent. At the highest altitudes, stunted plant growth and small marsupials survive in a harsh environment. Orchids and carnivorous pitcher plants are among the park’s most famous plants, although they are rare along the park’s most worn tourist trails. However, they are all on display in a botanical walk near the park headquarters where visitors can view some of the area’s most beautiful flora.",
//       "Tour":
//           "Kinabalu Park and Poring Hot Springs, Summit of Kinabalu, Kinabalu Park Botanique, Kinabalu Park Safari",
//       "Accomodation":
//           "KINABALU PARK PREMIER CHALET - KINABALU LODGE, THE HILL LODGE, THE PEAK LODGE, LIWAGU SUITE, NEPENTHES VILLA",
//       "Travel": "1 hr 8 min (86.3 km) from Kota Kinabalu",
//       "Reference": "https://www.borneoecotours.com/attractions/kinabalu-park",
//     },
//     {
//       "PlaceName": "Maliau Basin",
//       "PlaceTitle": "Sabah's Lost World",
//       "PlacePicture": "Maliau Basin-1.jpg",
//       "PlacePicture2": "Maliau Basin-2.jpg",
//       "PlacePicture3": "Maliau Basin-3.jpg",
//       "BackgroundPicture": "background_maliaubasin.jpg",
//       "PlaceStory":
//           "Maliau Basin is Southeast Asia’s ‘Lost World’, an area almost the size of Singapore, home to one of the most diverse collections of flora and fauna on earth. Maliau Basin is located in the southern region of central Sabah, about 40 kilometres north of the Kalimantan border. It is accessible via the towns of Keningau and Tawau, both four to five hour drives away. Maliau Basin has remained largely untouched and is a single huge water catchment, drained by one river only – the Maliau River, which flows through a gorge in the southeast of the Basin, joining the Kuamut River and eventually the Kinabatangan – Sabah’s largest and most important waterway. Major expeditions discovered a distinct and diverse flora of over 1,800 species, including at least 6 types of pitcher plant and more 80 species of orchid, several of which are new records for Sabah. The rare Rafflesia tengku-adlinii has also been found in Maliau Basin, one of only two known localities in Sabah, and two species completely new to science, a tree and a moss, have so far been discovered. The main forest area is dominated by majestic Agathis trees, rare montane heath forest and precious lowland and hill dipterocarp forest.",
//       "Tour": "Maliau Nature Safari, Maliau Basin Trek",
//       "Accomodation": "MALIAU BASIN STUDIES CENTRE (MBSC), ",
//       "Travel": "2 hrs 54 mins (154 km) from Kota Kinabalu",
//       "Reference": "https://www.borneoecotours.com/attractions/maliau-basin",
//     },
//     {
//       "PlaceName": "Sukau Rainforest Lodge",
//       "PlaceTitle": "A Charter Member of NatGeo Unique Lodges of The World",
//       "PlacePicture": "Sukau Rainforest Lodge-1.jpg",
//       "PlacePicture2": "Sukau Rainforest Lodge-2.jpg",
//       "PlacePicture3": "Sukau Rainforest Lodge-3.jpg",
//       "BackgroundPicture": "background_sukaurainforestlodge.jpg",
//       "PlaceStory":
//           "Built in 1995, The Sukau Rainforest Lodge is perched on the bank of the Kinabatangan River in Borneo, one of Asia's most important waterways. Sukau was the first lodge in the area designed based on ecotourism principles. It is built on stilts using Borneo hardwood species and is completely self-sufficient in water, harvesting rainwater and solar energy for hot water heating. Electric motors are used for river safari tours to wildlife areas to minimise air and noise pollution and reduce stress to the wildlife. Every room has an attached bathroom with solar hot water shower while electricity is supplied at night by a generator set. Facilities included – a bar lounge, gift shop, Gomantong Hall meeting place, education centre, Hornbill Boardwalk with two elephant passes, three open decks for wildlife viewing, an enclosed garden, a riverside Melapi restaurant, open sun-deck, river jetty and a dip pool. The lodge provides a great wildlife experience to visitors while preserving the Kinabatangan flood-plain. At 560 kilometres, Kinabatangan River is the longest river in Sabah, and second in Malaysia. The flood-plain of the Kinabatangan is one of the most exceptional areas in eastern Malaysia. The Lower Kinabatangan Wildlife Sanctuary is known to have among the highest concentration of wildlife in Borneo. Early dawn and late afternoon river cruises provide the perfect opportunity to see 10 primate species – usually the Proboscis Monkeys, Orang Utan and Borneon Gibbon. Among the 50 recorded mammal’s species found here including the Borneon Pygmy Elephant and Bearded Pig.",
//       "Tour":
//           "Kinabatangan Wildlife Safari (Overland), Best of Sandakan Sanctuaries, Kinabatangan Wildlife Safari (by boat), Orang Utan Search",
//       "Accomodation": "Sukau Rainforest Lodge",
//       "Travel": "6 hr 14 min bus travel (357.1 km) from Kota Kinabalu",
//       "Reference":
//           "https://www.borneoecotours.com/attractions/sukau-rainforest-lodge",
//     },
//     {
//       "PlaceName": "Sipadan-Mabul Island",
//       "PlaceTitle": "World's Top Dive Destinations",
//       "PlacePicture": "Mabul Island-1.jpg",
//       "PlacePicture2": "Sipadan Island-2.jpg",
//       "PlacePicture3": "Sipadan Island-3.jpg",
//       "BackgroundPicture": "background_mabulisland.jpg",
//       "PlaceStory":
//           "The late Jacques Cousteau, a world-renowned oceanographer, once described Sipadan Island as an untouched piece of art while divers around the world have voted it as one of the top five dive sites in the world. Rising 700 metres from the sea floor and at only 12 hectare, Malaysia's sole oceanic island is very small in size. A 25-minute walk is all that is needed to circle the island on foot, but the huge amount of diverse marine life it attracts from the blackness of the open sea is simply mind-blowing. Surrounded by crystal clear waters, this crown jewel is a treasure trove of some of the most amazing species out there. The dense vegetation on Sipadan supports a large variety of tropical birds that include sea eagles, kingfishers, sunbirds, starlings and wood pigeons. Exotic crustaceans including the amazing coconut crab roam the beaches and scurry among the undergrowth. Encounters with turtles, resident schools of jacks, bumphead parrotfish and barracudas are almost assured when diving around the tiny coral island. In addition, Sipadan has ten dive sites, including Barracuda Point, Coral Garden, The Drop Off, Hanging Gardens, Midreef, South Point, Staghorn Crest, Turtle Cavern, Turtle Patch and Whitetip Avenue.",
//       "Tour": "Dive Mabul-Kapalai, Dive Sipadan-Kapalai",
//       "Accomodation":
//           "Sipadan Kapalai Dive Resort, Mabul Water Bungalows, Sipadan-Mabul Resort, Semporna, Sabah, Mabul Beach Resort",
//       "Travel": "343 km from Kota Kinabalu",
//       "Reference":
//           "https://www.borneoecotours.com/attractions/sipadan-mabul-island",
//     },
//     {
//       "PlaceName": "Selingan Island",
//       "PlaceTitle": "The Safe Heaven for Turtles",
//       "PlacePicture": "Selingan Island-1.jpg",
//       "PlacePicture2": "Selingan Island-2.jpg",
//       "PlacePicture3": "Selingan Island-3.jpg",
//       "BackgroundPicture": "background_selinganisland.jpeg",
//       "PlaceStory":
//           "A designated National Park, Selingan Island is popular with tourists and turtles alike. Located approximately 40 kilometres north of Sandakan in the Sulu Sea, the island is a safe haven for the endangered green and hawksbill turtles and gives you the rare opportunity to watch turtle landings. As turtle landings usually occur after dusk, an overnight stay would be the best plan to see the turtles as they come ashore to lay their eggs. Turtles lay their eggs throughout the year, but the best time to head there is between July and October when the sea is calmer. Observe the collection of eggs, tagging of mother turtles and releasing of baby turtles into the sea. During the day, visitors can resort to other activities such as scuba diving and snorkeling.",
//       "Tour":
//           "Turtle and Orang Utan, Sandakan Wildlife Safari, Sabah Nature Safari",
//       "Accomodation": "Selingan Turtle Island Chalet",
//       "Travel": "221 km from Kota Kinabalu",
//       "Reference": "https://www.borneoecotours.com/attractions/selingan-island",
//     },
//     {
//       "PlaceName": "Tabin Wildlife",
//       "PlaceTitle": "Nature and Wildlife Reserve",
//       "PlacePicture": "Tabin Wildlife-1.jpg",
//       "PlacePicture2": "Tabin Wildlife-2.jpg",
//       "PlacePicture3": "Tabin Wildlife-3.jpg",
//       "BackgroundPicture": "background_tabinwildlife.jpg",
//       "PlaceStory":
//           "Tabin Wildlife is a nature preserve in Sabah, eastern Malaysia, on the island of Borneo. Tabin comprises a rectangular area of approximately 122,539 hectares in the centre of the Dent Peninsula, northeast of Lahad Datu town. Created in the year 1984, Tabin has been declared a Wildlife Reserve primarily on account of the large number of animals inhabiting its forests, some of which are highly endangered. The three largest mammals of Sabah, namely Borneo Pygmy Elephant, Sumatran Rhinoceros and Tembadau are all found within the reserve; nine species of primate are present, as well as three species of cats all of which are on the protected wildlife list. Of bird species, 42 families representing 220 species have been recorded. Covered in euryspecies lowland rainforest, Tabin nurtures a colossal number of tropical plants; some of which are rich in medicinal and therapeutic values. Since the availability of accommodation provided by Tabin Wildlife Resort in 2004, Tabin has gained popularity to be one of the best places in Sabah to observe the rich bio-diversity of nature and to part-take in nature-based activities. One of the highlights of Tabin being the active and mineral-rich mud volcanoes, attracting frequent visits by wildlife for their mineral intake and present an ideal platform for wildlife observation and bird-watching. Amongst the popular activities in Tabin are jungle trekking, night safari, night walk, wildlife spotting, birdwatching, and rainforest education.",
//       "Tour":
//           "Sukau-Tabin Wildlife Experience, Birding in Borneo - East Coast, Birding in Borneo",
//       "Accomodation":
//           "Tabin Wildlife Resort, Tabin Wildlife Resort Kinabatangan, Tabin Wildlife Holidays",
//       "Travel": "1 hr 56 min fly to Lahad Datu from Kota Kinabalu (295.9 km)",
//       "Reference": "https://www.borneoecotours.com/attractions/tabin-wildlife",
//     },
//     {
//       "PlaceName": "Imbak Canyon",
//       "PlaceTitle": "Sabah's Botanical Canyon",
//       "PlacePicture": "Imbak Canyon-1.jpg",
//       "PlacePicture2": "Imbak Canyon-2.jpg",
//       "PlacePicture3": "Imbak Canyon-3.jpg",
//       "BackgroundPicture": "background_imbakcanyon.jpg",
//       "PlaceStory":
//           "Imbak Canyon is a hidden valley, nestled between steep sandstone cliffs that reach over 1,000 metres high! It is located deep in the heart of Sabah, some 300 kilometres away from the capital, Kota Kinabalu. Ancient tracts of rainforest about 100 million years old – some of the oldest in the world – make their home in this stretch of land, acting as an essential wildlife corridor that links Danum Valley with Maliau Basin. This fact, coupled with the area’s rich biodiversity of plants and wildlife, have earned the Canyon its status as a Class 1 (Protection) Forest Reserve in 2009. An incredible sanctuary for some of Borneo’s rarest species, the Imbak Canyon is home to endangered Bornean Pygmy Elephants, Langurs, Western Tarsiers, Bearded Pigs, Proboscis Monkeys, and the iconic Orangutan, among others. It’s also a premier birdwatching destination, with over 250 species of birds including Hornbills and Bornean Bristleheads making their home here! A great number of exotic plants can also be found in the valley, such as the carnivorous Nepenthes or Pitcher Plants and rare species of wild Orchids. Though lesser known compared to the other protected areas In Sabah, the Imbak Canyon is quickly growing to be an important destination for nature lovers and researchers alike, culminating in the completion of the Imbak Canyon Studies Centre (ICSC) in 2016, with an extensive array of facilities at its disposal. Its beautiful rainforest scenery, decadently rich biodiversity, and excellent facilities make the Imbak Canyon perfect for both adventurers and scholars who can appreciate the valley’s bountiful gifts.",
//       "Tour": "Imbak Canyon Jungle Safari, Imbak Canyon Forest Adventure",
//       "Accomodation": "Imbak Canyon Conservation Area",
//       "Travel": "300 km from Kota Kinabalu",
//       "Reference": "https://www.borneoecotours.com/attractions/imbak-canyon",
//     },
//     {
//       "PlaceName": "Kokol Hill Elf",
//       "PlaceTitle": "A Piece Paradise of Sabah",
//       "PlacePicture": "kokol hill-2.jpg",
//       "PlacePicture2": "kokol hill-3.jpg",
//       "PlacePicture3": "kokol hill-4.jpg",
//       "BackgroundPicture": "background_kokolhill.jpg",
//       "PlaceStory":
//           "Kokol Hill is a favourite place for locals around Kota Kinabalu to relax and enjoy the wonderful scenery of Kota Kinabalu city. Kokol Hill is located at Menggatal and because of its strategic location, Kokol Hill offers Sunrise view of Mount Kinabalu and Sunset view overlooking the city. It took only 45 minutes’ drive from Kota Kinabalu city center and you will be surrounded by nature and fresh cool air. Perched above 800 meters high, this hilly retreat overlooks the city, sea, islands of Tunku Abdul Rahman Marine Park, Sepanggar Bay and other elements along the western coastline. Over the years, Resorts, restaurant, and guesthouse opening around Kokol Hill area offering rooms and foods for visiting guest with the amazing view of Kota Kinabalu City. ",
//       "Tour":
//           "Kokol Hill Elf Day trip, Paragliding, ATV, Mengkabong Fireflies Day trip",
//       "Accomodation":
//           "Kokol Heights, Kokol Haven Resort, Kokol Hill Villa, Borneo Tree House",
//       "Travel": "32 min (21.7 km) from Kota Kinabalu",
//       "Reference":
//           "https://travelog.com/activities/4263-kokol-hill-elf-meet-a-piece-of-paradise-in-kota-kinabalu-one-day-tour-kota-kinabalu",
//     },
//     {
//       "PlaceName": "Desa Cattle Dairy Farm",
//       "PlaceTitle": "The Little New Zealand of Sabah",
//       "PlacePicture": "Desa Cattle Dairy Farm.jpg",
//       "PlacePicture2": "2-Desa Cattle Dairy Farm.jpg",
//       "PlacePicture3": "3-Desa Cattle Dairy Farm.jpg",
//       "BackgroundPicture": "background_desacattledairyfarm.jpg",
//       "PlaceStory":
//           "Located at the foothill of Mount Kinabalu, Desa Cattle Dairy Farm offers one of the most amazing scenery one could envision. Often chosen as a wedding photography destination, with the majestic Mount Kinabalu overlooking beautiful green pastures, the scenery is breathtaking, not forgetting the cool breeze that Kundasang has to offer. The real attraction here is the cattle farm, producing about 900,00 litres of milk per year. The farm is 199 hectars and most of the milking cows are Friesians, the highest milk producers of all cattle breeds. It is an ideal destination for the whole family, where there are activities, such as feeding the calves with bottled milk, feeding goats with grass, how milk is processed as well as the milking process are available for all. If you have ever wondered how milk is made, Desa Cattle Farm is the place for you.",
//       "Tour": "Kinabalu Park With Rumah Terbalik & Desa Cow Farm",
//       "Accomodation":
//           "Mount Hill Villa Kundasang, Rocky Mountain Lodge, WIND VALLEY FARMSTAY, Sinurambi Homestay 2",
//       "Travel": "2 hr 5 min (98.4 km) from Kota Kinabalu",
//       "Reference":
//           "https://www.sabahtourism.com/destination/desa-cattle-dairy-farm/",
//     },
//   ];

//   _makelist() async {
//     for (var i = 0; i < Place.length; i++) {
//       final TourismPlace = Place[i];
//       final String? TourismTitle = TourismPlace["PlaceTitle"];
//       final String? TourismPicture = TourismPlace["PlacePicture"];
//       final String? TourismPicture2 = TourismPlace["PlacePicture2"];
//       final String? TourismPicture3 = TourismPlace["PlacePicture3"];
//       final String? TourismStory = TourismPlace["PlaceStory"];
//       final String? BackgroundStory = TourismPlace["BackgroundPicture"];
//       final String? Tour = TourismPlace["Tour"];
//       final String? Accomodation = TourismPlace["Accomodation"];
//       final String? Travel = TourismPlace["Travel"];
//       final String? Reference = TourismPlace["Reference"];

//       RegisteredPlaces.add(Container(
//         color: Colors.lightBlueAccent,
//         padding: EdgeInsets.all(9),
//         child: Card(
//           child: Column(
//             children: <Widget>[
//               Hero(
//                 tag: TourismPlace['PlaceName']!,
//                 child: Material(
//                   child: InkWell(
//                     onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                         builder: (BuildContext context) => PlaceDetail(
//                               PlaceName: TourismPlace["PlaceName"]!,
//                               PlaceTitle: TourismTitle!,
//                               PlacePicture: TourismPicture!,
//                               PlacePicture2: TourismPicture2!,
//                               PlacePicture3: TourismPicture3!,
//                               PlaceStory: TourismStory!,
//                               BackgroundPicture: BackgroundStory!,
//                               Tour: Tour!,
//                               Accomodation: Accomodation!,
//                               Travel: Travel!,
//                               Reference: Reference!,
//                             ))),
//                     child: Image.asset(
//                       "img/background_ui/$BackgroundStory",
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                   child: Container(
//                 color: Colors.white38,
//                 child: Center(
//                   child: Text(TourismPlace['PlaceName']!,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: 12, fontWeight: FontWeight.normal)),
//                 ),
//               ))
//             ],
//           ),
//         ),
//       ));
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _makelist();
//     super.initState();
//     FirebaseFirestore.instance
//         .collection("users")
//         .doc(user!.uid)
//         .get()
//         .then((value) {
//       loggedInUser = UserModel.fromMap(value.data());
//     });
//     super.initState();
//     // FirebaseFirestore.instance
//     //     .collection("places")
//     //     .doc("YgVjT95KXBk272lgMFZr")
//     //     .get()
//     //     .then((value) {
//     //   listplace = StoryModel.fromMap(value.data());
//     // });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.blueAccent,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   setState(() {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => AboutUsUI()));
//                   });
//                 },
//                 icon: Image.asset('img/logo/logo.png'),
//                 iconSize: 50,
//               ),
//               Spacer(),
//               Center(
//                 child: Text(
//                   "Sabah Tourism",
//                   style: TextStyle(color: Colors.white, fontSize: 25.0),
//                 ),
//               ),
//               Spacer(),
//               Spacer(),
//             ],
//           )),
//       body: Container(
//         color: Colors.lightBlueAccent,
//         child: Column(
//           children: [
//             Expanded(
//                 flex: 0,
//                 child: Padding(
//                     padding: EdgeInsets.only(
//                   top: 20,
//                 ))),
//             Expanded(
//                 flex: 0,
//                 child: Center(
//                     child: Row(
//                   children: [
//                     Padding(
//                         padding: EdgeInsets.only(
//                       left: 13,
//                     )),
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(right: 110),
//                           child: Container(
//                             alignment: Alignment.topLeft,
//                             child: Text(
//                               'Welcome ${loggedInUser.name},',
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.normal,
//                                   color: Colors.black),
//                               textAlign: TextAlign.justify,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.centerRight,
//                           child: Text(
//                             'Top 12 Places in Sabah',
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                             textAlign: TextAlign.right,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ))),
//             Padding(padding: EdgeInsets.only(bottom: 10)),
//             Expanded(
//                 child: GridView.count(
//                     crossAxisCount: 3, children: RegisteredPlaces))
//           ],
//         ),
//       ),
//     );
//   }
// }
