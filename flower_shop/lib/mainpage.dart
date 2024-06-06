import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_care/constants.dart';
import 'package:health_care/screens/home_screen/home_screen.dart';
import 'package:health_care/screens/signup_screen/signup_screen.dart';
import 'package:health_care/screens/splash_screen/components/splash_content.dart';
import 'package:health_care/screens/splash_screen/splash_screen.dart';

class Mainpage extends StatefulWidget {
  static String routeName = "/main";
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _loadWidget(int index) {
    // var nameWidgets = "None";
    switch (index) {
      case 0:
        return const HomeScreen();
       
      case 1:
        // nameWidgets = "Contact";
        break;
      case 2:
        // nameWidgets = "Info";
        break;
      case 3:
        return const SignUpScreen();
    }
    return const SplashScreen() ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          // Main content
              appBar: AppBar(
                title: const Text("My App Navigator"),
              ),
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://googleflutter.com/sample_image.jpg'),
                          ),
                          SizedBox(height: 8),
                          Text('Your Name'),
                          Text('yourmail@huﬂit.edu.vn'),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text('Home'),
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.contact_mail),
                      title: const Text('Contact'),
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.supervised_user_circle),
                      title: const Text('Info'),
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Register'),
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedIndex = 3;
                        });
                      },
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    const ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text('Logout'),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.contact_mail),
                    label: 'Contact',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.supervised_user_circle),
                    label: 'Info',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Register',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: kSecondaryColor,
                unselectedItemColor: Colors.grey,
                onTap: _onItemTapped,
              ),
              body: _loadWidget(_selectedIndex),
          
      );
  }
}