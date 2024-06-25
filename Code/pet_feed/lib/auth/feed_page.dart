import 'package:flutter/material.dart';
import 'package:pet_feed/auth/auth_app_bar.dart';
import 'package:pet_feed/auth/health_page.dart';
import 'package:pet_feed/bottom_nav_bar.dart';
import 'package:pet_feed/design/colors.dart';
import 'package:pet_feed/user.dart';
import 'package:pet_feed/user_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class FeedPage extends StatefulWidget {
  final String pet_name;
  const FeedPage({super.key, required this.pet_name});

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final String _feed = 'Пока не выбрали';
  final textInFormFieldStyle = TextStyle(
      color: textColor.withOpacity(0.9),
      fontSize: 15,
      fontFamily: 'Montserrat');
  final TextEditingController _searchController = TextEditingController();

  List<String> _items = [];

  List<String> _filteredItems = [];
  @override
  void initState() {
    super.initState();
    fetchData(); 
    _filteredItems = _items;
  }

  void fetchData() async {
    final response = await http.get(Uri.parse('http://10.0.2.2:8000/api/foods'));

    if (response.statusCode == 200) {
      var jsonMap = json.decode(response.body) as Map<String, dynamic>;
      var jsonList = jsonMap['results'] as List<dynamic>;
      _items = jsonList.cast<Map<String, dynamic>>().map<String>((jsonMap) => jsonMap['feed_name'] as String).toList();
      _filteredItems = _items;
    } else {
      throw Exception('Failed to load data');
    }
  }


  @override
  Widget build(BuildContext context) {
    UserInfo user = UserProvider.of(context);
    String myFeed = user.findPetByName(widget.pet_name)!.feed;
    return Scaffold(
        body: Stack(children: [
      // изображение на фоне
          Positioned.fill(
            child: Image.asset(
              'assets/img/background.png',
              fit: BoxFit.cover,
            ),
          ),

      ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const AuthAppBar(),
              const SizedBox(
                height: 10,
              ),
              // НАЗАД
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HealthPage(pet_name: widget.pet_name)),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mainWhiteColor.withOpacity(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: mainWhiteColor,
                      )),
                ],
              ),
              const Text(
                'Выберите основной корм',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: mainWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
              Text(
                'Выбранный корм: $myFeed',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: mainWhiteColor,
                    fontSize: 15,
                    fontFamily: 'Montserrat'),
              ),
              
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    setState(() {
                      _filteredItems = _items
                          .where((item) =>
                              item.toLowerCase().contains(value.toLowerCase()))
                          .toList();
                    });
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Введите название корма',
                    hintStyle: textInFormFieldStyle,
                    prefixIcon: const Icon(Icons.search),
                    labelText: 'Поиск',
                    labelStyle: textInFormFieldStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              
              SizedBox(
                height: 400,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: _filteredItems.map((item) {
                    return Card(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            myFeed = item;
                            user.findPetByName(widget.pet_name)!.feed = myFeed;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/img/cat.png'),
                            Text(item),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        )
      ]),
      Positioned(
        top: 700,
        left: 230,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  user.findPetByName(widget.pet_name)!.feed = myFeed;
                });
                if (user.findPetByName(widget.pet_name)!.feed !=
                    'Пока не выбран') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BottomNavBar()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: textColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Завершить',
                style: TextStyle(
                    color: mainWhiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
