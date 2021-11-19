// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors, prefer_const_constructors_in_immutables, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:home_interfaces/page/profile_ui.dart';
import 'story_ui.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeUI> {
  final List<Container> RegisteredPlaces = [];

  var Place = [
    {
      "PlaceName": "Mount Kinabalu",
      "PlacePicture": "Mount Kinabalu.jpg",
      "PlacePicture2": "Mount Kinabalu-2.jpg",
      "PlacePicture3": "Mount Kinabalu-3.jpg",
      "BackgroundPicture": "background_mountkinabalu.jpeg",
      "PlaceStory":
          "Mount Kinabalu's Specialia renowned World Heritage Site - Kinabalu Park. Nature lovers will be delighted to be able to witness the many variantions of flora and fauna that are to be found on the mountain at different altitudes. Mount Kinabalu, along with other upland areas of the Crocker Range is well-known worldwide for its tremendous botanical and biogical species biodiversity with plants of Himalayan, Australian, and Indo-Malayan origin.",
      "quiz": [
        {
          "questionText": "Q1. Where is Mount Kinabalu located?",
          "answer": [
            {'text': 'The island of Sulawesi', 'score': 0},
            {'text': 'The island of Hawaii', 'score': 0},
            {'text': 'The island of Borneo', 'score': 20},
            {'text': 'United States of America', 'score': 0},
          ],
        },
        {
          'questionText': 'Q2. What is the height of Mount Kinabalu?',
          'answers': [
            {'text': '2000 Metres', 'score': 0},
            {'text': '6000 Metres', 'score': 0},
            {'text': '8000 Metres', 'score': 0},
            {'text': '4000 Metres', 'score': 20},
          ],
        },
        {
          'questionText':
              ' Q3. All activities below are offered in Mount Kinabalu except',
          'answers': [
            {'text': 'Diving', 'score': 20},
            {'text': 'Sightseeing', 'score': 0},
            {'text': 'Mount climbing', 'score': 0},
            {'text': 'Camping', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q4. What other term can be called for Mount Kinabalu?',
          'answers': [
            {'text': 'Panalaban', 'score': 0},
            {'text': 'Mesilau', 'score': 0},
            {'text': 'Akinabalu', 'score': 20},
            {'text': 'Timpohon', 'score': 0},
          ],
        },
        {
          'questionText': 'Q5. Who climb Mount Kinabalu first?',
          'answers': [
            {'text': 'Hugh Low', 'score': 20},
            {'text': 'John Whitehead', 'score': 0},
            {'text': 'Lilian Gibbs', 'score': 0},
            {'text': 'Edred John Henry Corner', 'score': 0},
          ],
        },
      ],
    },
    {
      "PlaceName": "Mabul Island",
      "PlacePicture": "Mabul Island.jpg",
      "PlacePicture2": "2-Mabul Island.jpg",
      "PlacePicture3": "3-Mabul Island.jpg",
      "BackgroundPicture": "background_mabulisland.jpeg",
      "PlaceStory":
          "Mabul island is a small island off the south-eastern coast of Sabah in Malaysia. Mabul gained its own recognition as one of the best muck-diving sites in the world. Mabul is also renowned for its amazing array of macrolife, making it an underwater photographer’s dream location to capture some of the rarest ecological species on film. Flamboyant cuttlefish, blue-ringed octopus, spike-fin gobies, frogfish and moray eels are just some of the spectacular critters you will encounter beneath the waters of Mabul.The island is a small oval shaped island fringed by sandy beaches and perched on the northwest corner of a larger 200-hectare reef. In addition, Mabul is also a local island-village. Accommodation ranges from backpacker styled lodges to water bungalows. It is about 45 minutes’ boat ride from the Semporna town jetty.•	Mabul island is a small island off the south-eastern coast of Sabah in Malaysia. Mabul gained its own recognition as one of the best muck-diving sites in the world. Mabul is also renowned for its amazing array of macrolife, making it an underwater photographer’s dream location to capture some of the rarest ecological species on film. Flamboyant cuttlefish, blue-ringed octopus, spike-fin gobies, frogfish and moray eels are just some of the spectacular critters you will encounter beneath the waters of Mabul.The island is a small oval shaped island fringed by sandy beaches and perched on the northwest corner of a larger 200-hectare reef. In addition, Mabul is also a local island-village. Accommodation ranges from backpacker styled lodges to water bungalows. It is about 45 minutes’ boat ride from the Semporna town jetty.",
      "quiz": [
        {
          "questionText": "Q1. Where is Mabul Island located",
          "answer": [
            {'text': 'East-east coast of Sabah ', 'score': 0},
            {'text': 'South-east coast of Sabah ', 'score': 20},
            {'text': 'North-east coast of Sabah ', 'score': 0},
            {'text': 'West-east coast of Sabah ', 'score': 0},
          ],
        },
        {
          'questionText': 'Q2. How do you get to Mabul Island?',
          'answers': [
            {'text': 'Bus/Taxi', 'score': 0},
            {'text': 'Plane', 'score': 0},
            {'text': 'Ferry boat', 'score': 20},
            {'text': 'By Walking', 'score': 0},
          ],
        },
        {
          'questionText': ' Q3. What is special in Mabul Island?',
          'answers': [
            {'text': 'Swimming', 'score': 0},
            {'text': 'Snorkelling', 'score': 20},
            {'text': 'Diving', 'score': 0},
            {'text': 'Fishing', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q4.What is the best accomodation to stay in Mabul Island?',
          'answers': [
            {'text': 'Seaventures', 'score': 0},
            {'text': 'Sipadan Water Village', 'score': 0},
            {'text': 'Mabul Water bungalow', 'score': 20},
            {'text': 'Guesthouses', 'score': 0},
          ],
        },
        {
          'questionText': 'Q5. What culture is occupied in Mabul Island?',
          'answers': [
            {'text': 'Kadasandusun', 'score': 0},
            {'text': 'Sino', 'score': 0},
            {'text': 'Bajau Laut', 'score': 20},
            {'text': 'Murut', 'score': 0},
          ],
        },
      ],
    },
    {
      "PlaceName": "Sapi Island",
      "PlacePicture": "Sapi Island.jpg",
      "PlacePicture2": "Sapi Island-2.jpg",
      "PlacePicture3": "Sapi Island-3.jpg",
      "BackgroundPicture": "background_sapiisland.jpeg",
      "PlaceStory":
          "One of the must-visit islands in Sabah, a state in Malaysia, Sapi Island attracts tourists from all over the world. Famous for Coral Flyer - the longest zipline in the world, the beautiful island offers a plethora of activities such as scuba diving, snorkeling, swimming and more that will give you an adrenaline rush. Located very close to Kota Kinabalu, the 25-acre Sapi Island is one of the five islands constituting the Tunku Abdul Rahman Marine Park that covers 50 square km of the islands. Shaped like a cow’s head, this picturesque island in Malaysia has long been a favorite tourist destination for its distinguishing natural beauty, exotic culture, thrilling adventurous activities and thriving marine life. Some of the top attractions include the island’s distinctive wildlife, quaint hidden beaches and coral flying. For enchanting travelers and animal lovers who want to soak sunlight by the white sandy beaches and relax under rustling palms, Sapi Island can provide them a comfortable stay. While you are here at the ravishing island, try out the coral flyer zipline activity that will give you a tour of other surrounding islands. Fish and turtles in the clear water and macaques, wild boards and monitor lizards dot the island. You will enjoy snorkeling and diving in the surrounding reefs and hiking through the dense forests.",
      "quiz": [
        {
          "questionText": "Q1. Where is Sapi Island located?",
          "answer": [
            {'text': 'East- coast of Sabah', 'score': 0},
            {'text': 'South-east coast of Sabah', 'score': 0},
            {'text': 'North-east coast of Sabah', 'score': 0},
            {'text': 'West-east coast of Sabah', 'score': 20},
          ],
        },
        {
          'questionText': 'Q2. How to reach to Sapi Island?',
          'answers': [
            {'text': 'Bus/Taxi', 'score': 0},
            {'text': 'Planes', 'score': 0},
            {'text': 'On-foot', 'score': 0},
            {'text': 'Ferry boat', 'score': 20},
          ],
        },
        {
          'questionText': ' Q3. Why is it called Sapi Island?',
          'answers': [
            {'text': 'Serene blue oceans', 'score': 0},
            {'text': 'Distinctive Wildlife', 'score': 0},
            {'text': 'The Island’s Shaped like a cow’s head', 'score': 20},
            {'text': 'Multi Culture', 'score': 0},
          ],
        },
        {
          'questionText': 'Q4. What is special in Sapi Island?',
          'answers': [
            {'text': 'Coral Flyer activity', 'score': 20},
            {'text': 'Lizard Monitor', 'score': 0},
            {'text': 'Dense Forest', 'score': 0},
            {'text': 'Exotic Culture', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q5. All activities below are offered in Sapi Island except',
          'answers': [
            {'text': 'Zip lining', 'score': 0},
            {'text': 'Scuba Diving', 'score': 0},
            {'text': 'Climbing', 'score': 20},
            {'text': 'Hiking', 'score': 0},
          ],
        },
      ],
    },
    {
      "PlaceName": "Kokol Hill",
      "PlacePicture": "kokol hill-2.jpg",
      "PlacePicture2": "kokol hill-3.jpg",
      "PlacePicture3": "kokol hill-4.jpg",
      "BackgroundPicture": "background_kokolhill.jpeg",
      "PlaceStory":
          "Kokol Hill is a favourite place for locals around Kota Kinabalu to relax and enjoy the wonderful scenery of Kota Kinabalu city. Kokol Hill is located at Menggatal and because of its strategic location, Kokol Hill offers Sunrise view of Mount Kinabalu and Sunset view overlooking the city. It took only 45 minutes’ drive from Kota Kinabalu city center and you will be surrounded by nature and fresh cool air. Perched above 800 meters high, this hilly retreat overlooks the city, sea, islands of Tunku Abdul Rahman Marine Park, Sepanggar Bay and other elements along the western coastline. Over the years, Resorts, restaurant, and guesthouse opening around Kokol Hill area offering rooms and foods for visiting guest with the amazing view of Kota Kinabalu City. ",
      "quiz": [
        {
          "questionText": "Q1. Which part of district that Kokol Hill located?",
          "answer": [
            {'text': 'Sandakan', 'score': 0},
            {'text': 'Tawau', 'score': 0},
            {'text': 'emporna', 'score': 0},
            {'text': 'Kota Kinabalu', 'score': 20},
          ],
        },
        {
          'questionText':
              'Q2. How long would it take to go to Kokol Hill from Kota Kinabalu by using car',
          'answers': [
            {'text': '1 Hours', 'score': 20},
            {'text': '30 Minutes', 'score': 0},
            {'text': '2 Hours', 'score': 0},
            {'text': '10 Minutes', 'score': 0},
          ],
        },
        {
          'questionText':
              ' Q3. All activities below are offered in Kokol Hill except',
          'answers': [
            {'text': 'ATV', 'score': 0},
            {'text': 'Paragliding', 'score': 0},
            {'text': 'Camping', 'score': 20},
            {'text': 'Sightseeing', 'score': 0},
          ],
        },
        {
          'questionText': 'Q4. What other term can be called for Kokol Hill?',
          'answers': [
            {'text': 'Kokol Elf', 'score': 20},
            {'text': 'Kampung Kokol', 'score': 0},
            {'text': 'Sunset Catcher', 'score': 0},
            {'text': 'Mega Swing', 'score': 0},
          ],
        },
        {
          'questionText': 'Q5. What is special in Kokol Hill?',
          'answers': [
            {'text': 'Budget accommodation around the summit', 'score': 0},
            {
              'text':
                  'Offers Sunrise view of Mount Kinabalu and Sunset view overlooking the city',
              'score': 20
            },
            {'text': 'Enjoy nature activities', 'score': 0},
            {
              'text': 'Rich for its culture, rainforest and coral reefs',
              'score': 0
            },
          ],
        },
      ],
    },
    {
      "PlaceName": "Gaya Street",
      "PlacePicture": "Gaya Street-3.jpg",
      "PlacePicture2": "Gaya Street-2.jpg",
      "PlacePicture3": "Gaya Street.jpg",
      "BackgroundPicture": "background_gayastreet.jpeg",
      "PlaceStory":
          "Originally named Bond Street, Gaya Street located in the Kota Kinabalu Central Business District has been the centre of business for over a hundred years. Every Sunday morning, the whole stretch of Gaya Street is closed off to traffic to make way for the street fair. A must visit market while in KK, you will be fascinated by the various items and goods sold at this fair. From arts and crafts, batik sarongs, footwear, fruits and flowers, local snacks and cakes, antiques and souvenirs, to even pets and herbs, this is the best place to experience the culture and lifestyle of the locals. The street fair starts as early as 6.00am and ends at 1.00pm.",
      "quiz": [
        {
          "questionText": "Q1. Which part of district that Kokol Hill located?",
          "answer": [
            {'text': 'Tuaran', 'score': 0},
            {'text': 'Menggatal', 'score': 0},
            {'text': 'Penampang', 'score': 0},
            {'text': 'Kota Kinabalu', 'score': 20},
          ],
        },
        {
          'questionText': 'Q2. On what day will this market usually open?',
          'answers': [
            {'text': 'Monday', 'score': 0},
            {'text': 'Wednesday', 'score': 0},
            {'text': 'Friday', 'score': 0},
            {'text': 'Sunday', 'score': 20},
          ],
        },
        {
          'questionText': ' Q3. At what time this market will open?',
          'answers': [
            {'text': '6.00 am to 1.00 pm', 'score': 20},
            {'text': '5.00 pm to 10.00 pm', 'score': 0},
            {'text': '9.00 am to 5.00 pm', 'score': 0},
            {'text': 'Entire day', 'score': 0},
          ],
        },
        {
          'questionText': 'Q4. What the original term called for Gaya Street?',
          'answers': [
            {'text': 'KK Street', 'score': 0},
            {'text': 'Central Business', 'score': 0},
            {'text': 'Bond Street', 'score': 20},
            {'text': 'Chinatown Sabah', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q5. All below are the speciality in Gaya Street Except?',
          'answers': [
            {
              'text': 'Closed off to traffic to make way for the street fair',
              'score': 0
            },
            {'text': 'various items and goods sold', 'score': 0},
            {'text': 'Budget accommodation around the Street', 'score': 20},
            {
              'text': 'Experience the culture and lifestyle of the locals',
              'score': 0
            },
          ],
        },
      ],
    },
    {
      "PlaceName": "Layang-Layang Island",
      "PlacePicture": "layang-layang island-2.jpg",
      "PlacePicture2": "layang-layang island-3.jpg",
      "PlacePicture3": "layang-layang island.jpg",
      "BackgroundPicture": "background_layanglayangisland.jpeg",
      "PlaceStory":
          "Layang-Layang, known as “Swallows Reef” is man-made and was constructed for the Malaysian Navy and later developed for the only dive resort, Layang-Layang Island Resort. The island location offers absolute isolation, luckily there is an airstrip with regular flights from Kota Kinabalu, which is the only mode of transport for guests visiting Layang-Layang. The extreme location of Layang-Layang, the pristine reefs, excellent visibility, steep walls down to 2000km and regular sightings of pelagic has given Layang-Layang a much deserved reputation of being one of the top ten dive locations in the world. The 20m deep lagoon has some great macro creatures to be found including seahorses, cuttlefish and pipefish but it is the pelagic visiting the outer walls that truly excite divers. Schools of scalloped hammerhead sharks, grey reef sharks, leopard sharks and the occasional threshers and silvertip sharks can all be seen. Stingrays are also regular visitors including manta rays, pygmy devil rays, marbled rays and eagle rays. Rare sightings such as whale sharks, orcas and melon headed whales have all been seen over the last few years. Spinner and bottlenose dolphins frequently follow the dive boats to each location and divers are sometimes rewarded with snorkelling and diverse fish life and visiting pelagic marine life.",
      "quiz": [
        {
          "questionText": "Q1. Where is Layang-Layang Island located?",
          "answer": [
            {'text': 'East- coast of Sabah ', 'score': 0},
            {'text': 'South-east coast of Sabah ', 'score': 0},
            {'text': 'North-west coast of Sabah ', 'score': 20},
            {'text': 'West-east coast of Sabah ', 'score': 0},
          ],
        },
        {
          'questionText': 'Q2. How to reach to Layang-Layang Island?',
          'answers': [
            {'text': 'Bus/Taxi', 'score': 0},
            {'text': 'Plane', 'score': 20},
            {'text': 'Ferry boat', 'score': 0},
            {'text': 'On-foot', 'score': 0},
          ],
        },
        {
          'questionText':
              ' Q3. What other term can be called for Layang-Layang Island?',
          'answers': [
            {'text': 'Swallow Reef', 'score': 20},
            {'text': 'Man-made Island', 'score': 0},
            {'text': 'Jewel Borneo Banks', 'score': 0},
            {'text': 'Kite Island', 'score': 0},
          ],
        },
        {
          'questionText': 'Q4. What is special in Layang-Layang Island?',
          'answers': [
            {'text': 'Rare sightings fish', 'score': 0},
            {'text': 'Great macro creatures', 'score': 20},
            {'text': 'Offers undisturbed diving adventures Forest', 'score': 0},
            {'text': 'Unique local stay experience', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q5. All activities below are offered in Layang-Layang Island except',
          'answers': [
            {'text': 'Swimming', 'score': 0},
            {'text': 'Scuba Diving', 'score': 0},
            {'text': 'Snorkelling', 'score': 0},
            {'text': 'Hiking', 'score': 20},
          ],
        },
      ],
    },
    {
      "PlaceName": "Poring Hot Spring",
      "PlacePicture": "2-Poring.jpg",
      "PlacePicture2": "3-Poring.jpg",
      "PlacePicture3": "Poring.jpg",
      "BackgroundPicture": "background_poring.jpeg",
      "PlaceStory":
          "A visit to Ranau would not be complete without stopping by at Poring Hot Springs, a tropical retreat that caters to everyone. Poring comes from a KadazanDusun word which means bamboo and is found abundant in this area. Visitors wishing to spend the entire day relaxing can dip into a hot sulphur bath which helps to reduce stress by relaxing tense muscles as well as promote good sleep. Sulphur rich hot springs are also thought to have healing benefits including treating skin irritations and allergies such as psoriasis and eczema including dry scalp. Visitors with children will have a great time splashing in the swimming pool too. Those wanting more of a nature adventure however, can explore the surroundings by trekking through the trails of lowland forests and visit the 2 famous waterfalls – Kipungit Waterfall and Langganan Waterfall. Langganan Waterfall is the furthest and requires about 2 hours’ trek, but the view of the 120m waterfall wonder is simply awesome! While in Poring Hot Spring, don’t forget to also visit the tropical gardens, butterfly farm and orchid conservation centre. Lucky trekkers might even catch a rare glimpse of the world’s largest flower, Rafflesia. Don’t forget to conquer the 41m-high canopy walkway which is one of the main highlights! It takes about 30 minutes’ hike on gravel trail to the starting point of the canopy walkway from the ticket inspection and registration counter. The Canopy walkway is a suspension bridge constructed with ropes, steel cables, aluminium ladders, walking planks to cover the open rungs of the ladders and netting at both sides for safety.  Visitors planning to experience the canopy walkway need to purchase the entrance ticket at the park’s entrance.",
      "quiz": [
        {
          "questionText":
              "Q1. Which part of district that Poring Hot Spring (PHS) located?",
          "answer": [
            {'text': 'Ranau', 'score': 20},
            {'text': 'Kudat', 'score': 0},
            {'text': 'Sandakan', 'score': 0},
            {'text': 'Kota Kinabalu', 'score': 0},
          ],
        },
        {
          'questionText': 'Q2. Why the place called Poring?',
          'answers': [
            {
              'text': 'Comes from a KadazanDusun word which means bamboo',
              'score': 20
            },
            {'text': 'Found in abundant area', 'score': 0},
            {'text': 'Hot Sulphur bath', 'score': 0},
            {
              'text': 'Developed by the Japanese during world war II',
              'score': 0
            },
          ],
        },
        {
          'questionText': ' Q3. What is the benefits of Hot Sulphur Bath?',
          'answers': [
            {'text': 'Replenish energy', 'score': 0},
            {'text': 'Relieve Stress', 'score': 0},
            {'text': 'Enhance brain cells', 'score': 0},
            {'text': 'Treating skin irritations', 'score': 20},
          ],
        },
        {
          'questionText': 'Q4. What is special in PHS?',
          'answers': [
            {'text': 'More nature adventures available', 'score': 20},
            {'text': 'Provide great accommodation', 'score': 0},
            {
              'text': 'Provide Western Asian Cuisine and local delicacies',
              'score': 0
            },
            {'text': 'Rich for its culture and rainforest ', 'score': 0},
          ],
        },
        {
          'questionText': 'Q5. All activities below are offered in PHS except',
          'answers': [
            {'text': 'Sight Seeing', 'score': 0},
            {'text': 'Hot Bath', 'score': 0},
            {'text': 'Diving', 'score': 20},
            {'text': 'Jungle Trekking', 'score': 0},
          ],
        },
      ],
    },
    {
      "PlaceName": "Signal Hill",
      "PlacePicture": "3-Signal Hill.jpg",
      "PlacePicture2": "2-Signal Hill.jpg",
      "PlacePicture3": "Signal Hill.jpg",
      "BackgroundPicture": "background_signalhill.jpeg",
      "PlaceStory":
          "Signal Hill, the highest point in the city, is one of the best places to get a good view of Kota Kinabalu city. Just a couple of minutes’ drive from Padang Merdeka or a brief exercising walk from the city will bring you to the airy deck where you can get amazing views that extend to the outlying islands of the Tunku Abdul Rahman Park and further. At any other time of the day the Signal Hill Observation Platform is fairly quiet as the heat of the day keeps most people at bay. It’s possible via main road or a few short cuts, one past Atkinson’s Clock Tower and another to the left of Garden Hotel in Australia Place, which is also an impromptu mini jungle trek. There’s no entry fee at the platform, and the only facilities include a toilet and a small cafe that offers snacks and drinks. As one of Kota Kinabalu’s more visible landmarks (look up!) every city exploration tour should feature the Signal Hill Observation Platform.",
      "quiz": [
        {
          "questionText": "Q1. Where is Desa Cattle Dairy Farm located?",
          "answer": [
            {'text': 'Penampang', 'score': 0},
            {'text': 'Ranau', 'score': 0},
            {'text': 'Kundasang', 'score': 20},
            {'text': 'Sandakan', 'score': 0},
          ],
        },
        {
          'questionText': 'Q2. what is in Desa Cattle Dairy Farm?',
          'answers': [
            {'text': 'Goods productions', 'score': 0},
            {'text': 'Cultivate Farm', 'score': 0},
            {'text': 'Producing cow’s milk and dairy product', 'score': 20},
            {'text': 'Selling Fresh Vegetables', 'score': 0},
          ],
        },
        {
          'questionText':
              ' Q3. What other term can be called for Desa Cattle Dairy Farm?',
          'answers': [
            {'text': 'Cattle Farm', 'score': 0},
            {'text': 'Holstein Friesian ', 'score': 0},
            {'text': 'Little New Zealand', 'score': 20},
            {'text': 'Sabah New Zealand', 'score': 0},
          ],
        },
        {
          'questionText': 'Q4. What is special in Desa Cattle Dairy Farm?',
          'answers': [
            {
              'text':
                  'Beautiful panorama green pastures of Scenery with cool climate',
              'score': 20
            },
            {'text': 'Feeding Cows and Goats', 'score': 0},
            {'text': 'Milks Production', 'score': 0},
            {'text': 'Provide Cattle Milk and Ice Cream souvenirs', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q5. All activities below are offered in Desa Cattle Dairy Farm except',
          'answers': [
            {'text': 'Camping', 'score': 20},
            {'text': 'Photo Wedding', 'score': 0},
            {'text': 'Sight Seeing', 'score': 0},
            {'text': 'Calves feeding', 'score': 0},
          ],
        },
      ],
    },
    {
      "PlaceName": "Kota Kinabalu Mosque",
      "PlacePicture": "KK mosque.jpg",
      "PlacePicture2": "2-KK mosque.jpg",
      "PlacePicture3": "3-KK mosque.jpg",
      "BackgroundPicture": "background_kkmosque.jpeg",
      "PlaceStory":
          "The Kota Kinabalu City Mosque is the second main mosque in Kota Kinabalu, Sabah, Malaysia, after State Mosque in Sembulan. The head imam is Ustaz Suhaidi Kuanting. The mosque was officially opened on 2 February 2000 following a proclamation of the city status of Kota Kinabalu. Construction of the mosque cost 34 million Malaysian ringgits. The architectural design is based on the Nabawi Mosque, the second holiest site in Islam, in Medina, Saudi Arabia. The dome is blue and gold, inspired by similar Arabic architecture. this has given rise to the nickname The Floating Mosque. The mosque is a common tourist destination and included in several tours; it is also a common destination for photographers. The mosque may be visited by non-Muslims, except during prayers.",
      "quiz": [
        {
          "questionText": "Q1. When Kota Kinabalu City Mosque is firstly open?",
          "answer": [
            {'text': '1990', 'score': 0},
            {'text': '1992', 'score': 0},
            {'text': '1999', 'score': 0},
            {'text': '2000', 'score': 20},
          ],
        },
        {
          'questionText':
              'Q2. How long do it take to go to Kota Kinabalu City Mosque from KK City?',
          'answers': [
            {'text': '15 Minutes', 'score': 20},
            {'text': '30 Minutes', 'score': 0},
            {'text': '1 Hours', 'score': 0},
            {'text': '1 Hours and 30 Minutes', 'score': 0},
          ],
        },
        {
          'questionText':
              ' Q3. What other term can be called for Kinabalu City Mosque?',
          'answers': [
            {'text': 'Majestic Mosque', 'score': 0},
            {'text': 'The Floating Mosque', 'score': 20},
            {'text': 'Mirror Image Mosque', 'score': 0},
            {'text': 'Nabawi Mosque ', 'score': 0},
          ],
        },
        {
          'questionText': 'Q4. What is special Kinabalu City Mosque?',
          'answers': [
            {'text': 'Beautiful views', 'score': 0},
            {
              'text':
                  'Visitors can make way into the mosque on all days of the week',
              'score': 0
            },
            {'text': 'Modern Islamic Architecture', 'score': 0},
            {
              'text':
                  'Majestic white colored mosque floats on an artificial lagoon',
              'score': 20
            },
          ],
        },
        {
          'questionText':
              'Q5. All activities below are offered in Kinabalu City Mosque except',
          'answers': [
            {'text': 'Camping', 'score': 20},
            {'text': 'Photo ', 'score': 0},
            {'text': 'Sight Seeing', 'score': 0},
            {'text': 'Paddle Boat Rides', 'score': 0},
          ],
        },
      ],
    },
    {
      "PlaceName": "Tanjung Aru Beach",
      "PlacePicture": "2-Tanjung Aru Beach.jpg",
      "PlacePicture2": "3-Tanjung Aru Beach.jpg",
      "PlacePicture3": "Tanjung Aru Beach.jpg",
      "BackgroundPicture": "background_tanjungarubeach.jpeg",
      "PlaceStory":
          "Located at the end of Jalan Tunku Abdul Rahman and about 6 kilometres from KK City, this place is closest to the hearts of the locals, and just one visit to the beach will tell you why. Taking its name from the casuarinas or aru trees that fringe the fine sands, this is where one might get a ringside seat to the greatest sunset on earth every evening when the crimson sun dips slowly into the horizon, leaving the vast skies a brilliant red. Popular activities to do here are kite flying, picnics, team building or just enjoying snacks sold at small food stalls while watching the sunset.  The Tanjung Aru beach is also home to Shangri-la’s Tanjung Aru Resort & Spa, the Kinabalu Golf Club and the Kinabalu Yacht Club. The beautiful Sabah State Library as well as Perdana Park are nearby places to visit while in Tanjung Aru.",
      "quiz": [
        {
          "questionText": "Q1. Where is Tanjung Aru Beach located?",
          "answer": [
            {'text': 'Penampang', 'score': 0},
            {'text': 'Ranau', 'score': 0},
            {'text': 'Kota Kinabalu', 'score': 20},
            {'text': 'Sandakan', 'score': 0},
          ],
        },
        {
          'questionText': 'Q2. Why is it called Tanjung Aru Beach?',
          'answers': [
            {'text': 'Beach views', 'score': 0},
            {'text': 'Sunsets', 'score': 0},
            {'text': 'Vast Skies views', 'score': 0},
            {'text': 'Aru trees', 'score': 20},
          ],
        },
        {
          'questionText':
              ' Q3. How long do it take to go to Tanjung Aru Beach from KK City?',
          'answers': [
            {'text': '15 Minutes', 'score': 20},
            {'text': '30 Minutes', 'score': 0},
            {'text': '1 Hours', 'score': 0},
            {'text': '2 Hours', 'score': 0},
          ],
        },
        {
          'questionText': 'Q4. What is special in Tanjung Aru Beach?',
          'answers': [
            {'text': 'Most iconic sunsets and great for selfies', 'score': 20},
            {
              'text':
                  'Visitors can make way into the beach on all days of the week',
              'score': 0
            },
            {'text': 'Silky golden beach', 'score': 0},
            {'text': 'Variety of Cultures', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q5. All activities below are offered in Kinabalu City Mosque except',
          'answers': [
            {'text': 'Beach sports activities', 'score': 0},
            {'text': 'Hawker Stalls', 'score': 0},
            {'text': 'Sight Seeing', 'score': 0},
            {'text': 'Diving', 'score': 20},
          ],
        },
      ],
    },
    {
      "PlaceName": "Sipadan Island",
      "PlacePicture": "2-Sipadan Island.jpg",
      "PlacePicture2": "3-Sipadan Island.jpg",
      "PlacePicture3": "Sipadan Island.jpg",
      "BackgroundPicture": "background_sipadanisland.jpeg",
      "PlaceStory":
          "Sipadan is the only oceanic island in Malaysia, rising 600 metres (2,000 ft) from the seabed. It is located in the Celebes Sea off the east coast of Sabah, Malaysia. It was formed by living corals growing on top of an extinct volcanic cone that took thousands of years to develop. Sipadan is located at the heart of the Indo-Pacific basin, the centre of one of the richest marine habitats in the world. More than 400 species of fish and hundreds of coral species have been classified in this ecosystem. Sipadan Island was at the top of Rodale's Scuba Diving Magazine Gold List for 'The Top Dive Destination in the World'.In fact, it shared its top spot with 2 other destinations known for the diversity of their marine life — the Galápagos Islands of Ecuador and Truk in Micronesia. Furthermore, one of the dive operators; Scuba Junkie was voted by the public the Best Dive Resort in the World 2020 at DiveMagazine's annual Dive Travel Awards.",
      "quiz": [
        {
          "questionText": "Q1. Where is Sipadan Island located?",
          "answer": [
            {'text': 'East- coast of Sabah ', 'score': 20},
            {'text': 'South-east coast of Sabah ', 'score': 0},
            {'text': 'North-east coast of Sabah ', 'score': 0},
            {'text': 'West-east coast of Sabah ', 'score': 0},
          ],
        },
        {
          'questionText': 'Q2. What is the height of Mount Kinabalu?',
          'answers': [
            {'text': 'Bus/Taxi', 'score': 0},
            {'text': 'Plane', 'score': 0},
            {'text': 'Ferry', 'score': 0},
            {'text': 'Speed Boat', 'score': 20},
          ],
        },
        {
          'questionText': ' Q3. How Sipadan Island is formed?',
          'answers': [
            {'text': 'Man-made Island', 'score': 0},
            {'text': 'Construction Development', 'score': 0},
            {
              'text':
                  'The living corals growing on top of an extinct volcanic cone',
              'score': 20
            },
            {'text': 'Long-settled culture resident', 'score': 0},
          ],
        },
        {
          'questionText': 'Q4. What is special in Sapi Island?',
          'answers': [
            {'text': 'Rich species of sea ecosystems', 'score': 0},
            {'text': 'Variety of outstanding diving spots', 'score': 20},
            {'text': 'Multi-coloured coral species', 'score': 0},
            {'text': 'Exotic Culture', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q5. All activities below are offered in Sapi Island except',
          'answers': [
            {'text': 'Fishing', 'score': 0},
            {'text': 'Scuba Diving', 'score': 0},
            {'text': 'Climbing', 'score': 0},
            {'text': 'Hiking', 'score': 20},
          ],
        },
      ],
    },
    {
      "PlaceName": "Simpang Mengayau",
      "PlacePicture": "2-Simpang Mengayau.jpg",
      "PlacePicture2": "3-Simpang Mengayau.jpg",
      "PlacePicture3": "Simpang Mengayau.jpg",
      "BackgroundPicture": "background_simpangmengayau.jpeg",
      "PlaceStory":
          "The Tip of Borneo is the northernmost tip of Borneo located in the district of Kudat, in the state of Sabah, Malaysia. The tip marks the meeting point of the South China Sea and Sulu Sea. The original name of Tanjung Sampang Mangazou comes from the language of the indigenous Rungus, an ethnic group which resides mainly in the district of Kudat. The words Tanjung (cape), Sampang (union) and Mangazou (battle) refers to this location of a battle that occurred when the ethnic Rungus defended their territory against the attack from Moro Pirates. According to legend, this place was a favourite landing point for the pirates. The tip is one of Sabah's popular tourist attractions. Within the area, there is a park-like grounds with a Malaysian flag pole and a large bronze globe which opened since 2004. The bronze globe marks the location of the Borneo Island tip at latitude 7 degrees north and longitude 116 degrees east with a map featuring the island embossed in bronze and laid on a flat surface at an angle with inscriptions to mark the tip. Over the years, several infrastructure and public amenities have been erected at the site which including a public rest area with a café, souvenir shop and washrooms. In the park-like grounds, it has become one of the destination to view sunsets and full moons.",
      "quiz": [
        {
          "questionText": "Q1. Where is Tanjung Simpang Mengayau located?",
          "answer": [
            {'text': 'Kudat', 'score': 20},
            {'text': 'Ranau', 'score': 0},
            {'text': 'Kota Kinabalu', 'score': 0},
            {'text': 'Sandakan', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q2. Why is it called Tanjung Simpang Mengayau Beach?',
          'answers': [
            {'text': 'The meeting point of two big oceans', 'score': 0},
            {'text': 'The Shape of the tip', 'score': 0},
            {'text': 'The junction to the battle at the tip', 'score': 20},
            {
              'text': 'Watch-point for pirate invasion hundreds of years ago',
              'score': 0
            },
          ],
        },
        {
          'questionText':
              ' Q3. How long do it take to go to Tanjung Simpang Mengayau from KK City?',
          'answers': [
            {'text': '15 Minutes', 'score': 0},
            {'text': '30 Minutes', 'score': 0},
            {'text': '1 Hours', 'score': 0},
            {'text': '3 Hours', 'score': 20},
          ],
        },
        {
          'questionText': 'Q4. What is special in Tanjung Simpang Mengayau?',
          'answers': [
            {'text': 'Budget accommodation around the Street', 'score': 0},
            {
              'text':
                  'A park ground with bronze globe marks the location of the Borneo Island tip',
              'score': 20
            },
            {'text': 'Crystal clear beach', 'score': 0},
            {'text': 'Variety of Cultures', 'score': 0},
          ],
        },
        {
          'questionText':
              'Q5. All activities below are offered in Tanjung Simpang Mengayau except',
          'answers': [
            {'text': 'Camping', 'score': 20},
            {'text': 'Photo Selfies', 'score': 0},
            {'text': 'Sight Seeing', 'score': 0},
            {'text': 'Sunset Music Fest', 'score': 0},
          ],
        },
      ],
    },
  ];

  _makelist() async {
    for (var i = 0; i < Place.length; i++) {
      final TourismPlace = Place[i];
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
                        builder: (BuildContext context) => PlaceDetail(
                              PlaceName: TourismPlace["PlaceName"]!,
                              PlacePicture: TourismPicture!,
                              PlacePicture2: TourismPicture2!,
                              PlacePicture3: TourismPicture3!,
                              PlaceStory: TourismStory!,
                              BackgroundPicture: BackgroundStory!,
                            ))),
                    child: Image.asset(
                      "img/places/$TourismPicture",
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
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text(
            "Sabah Tourism",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileUI()));
              },
              icon: Icon(
                Icons.person,
                size: 40,
              ))
        ],
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            Expanded(
                flex: 0, child: Padding(padding: EdgeInsets.only(top: 20))),
            Expanded(
                flex: 0,
                child: Center(
                    child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 13,
                    )),
                    Text(
                      'Popular Places',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ))),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 3, children: RegisteredPlaces))
          ],
        ),
      ),
    );
  }
}
