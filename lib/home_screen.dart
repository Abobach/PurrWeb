
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  static const List<Map<String, String>> cardData = [
    {'label': 'Наборы', 'image': 'lib/assets/imageFifith.jpg'},
    {'label': 'Для лица', 'image': 'lib/assets/imageFirst.jpg'},
    {'label': 'Для глаз', 'image': 'lib/assets/imageFree.jpg'},
    {'label': 'Для тела', 'image': 'lib/assets/imageSecond.jpg'},
    {'label': 'Лучшее', 'image': 'lib/assets/imageFourth.jpg'},
    {'label': 'Скидка', 'image': 'lib/assets/imageSixth.jpg'},
  
  ];
   static const List<Map<String, dynamic>> newItems = [
    {'title': 'Unstress Total Serenity Serum', 'price': '10 196 ₽', 'image': 'lib/assets/assetsImage.jpg'},
    {'title': 'Товар 2', 'price': '3 095 ₽', 'image': 'lib/assets/assetsImage2.jpg'},
    {'title': 'Товар 3', 'price': '7 329 ₽', 'image': 'lib/assets/assetsimage4.jpg'},
    {'title': 'Товар 4', 'price': '1 123 ₽', 'image': 'lib/assets/assetstImage3.jpg'},
   
  ];
 static final List<Widget> _pages = [];

  @override
  void initState() {

  super.initState();
  _pages.addAll([
   SingleChildScrollView(
     child: Column(
     children: [ Container(
            width: double.infinity,
            height: 359,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('lib/assets/picture1.jpg'), // Убедитесь, что файл изображения добавлен в pubspec.yaml
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Align(
               alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                 
                  child:
                      Container(

                        decoration: BoxDecoration(
                          
                          color: Colors.black.withOpacity(0.2),
                              
                          borderRadius: BorderRadius.circular(25),
                        ),
                          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 6),
                         
                                
                        child: Row(
                          children: [
                            const Text(
                              'Скидка -15%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 41,),
                             ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                          ),
                          child: const Text('Подробнее', selectionColor: Colors.black,),
                        ),
                           
                          ],
                        ),   
                      )
                  ),
                ),
              ),
            ),  
         const SizedBox(height: 16),
         Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardData.length,
                itemBuilder: (context, index) {
                  final card = cardData[index];
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(card['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.black.withOpacity(0.2),
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                        child: Text(
                          card['label']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
              const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Text(
                    'Новинка',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Container(
                      height: 2,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.blue],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                ),
            const SizedBox(height: 16),
            SizedBox(
              height: 480,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: newItems.length,
                itemBuilder: (context, index) {
                  final item = newItems[index];
                  return Container(
                    width: 140,
                    height: 400,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(item['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                          SizedBox(height: 8),
                        Text(
                          item['title'],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['price'],
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
          )  
     ]
  
      ),
   ),
    const Center(
      child: Text('Поиск', 
      style: TextStyle(color: Colors.black))),
    const Center(
      child: Text('Корзина', 
      style: TextStyle(color: Colors.black))),
    const Center(
      child: Text('Профиль',
      style: TextStyle(color: Colors.black))),
  ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        currentIndex: selectedindex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
      );
    }
}


