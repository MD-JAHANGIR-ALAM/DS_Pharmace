import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors_code.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../drawer_page/drawer_page.dart';
import 'add_medicine.dart';

class MedicineSetup extends StatefulWidget {
  const MedicineSetup({super.key});

  @override
  State<MedicineSetup> createState() => _MedicineSetupState();
}

class _MedicineSetupState extends State<MedicineSetup> {

  final GlobalKey<ScaffoldState> _drawer = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> _allUsers = [
    {"name": "Napa", "Generic": "napa"},
    {"name": "Napa Extra", "Generic": "napa extra"},
    {"name": "Alzin", "Generic": "Alzin"},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawer,
      drawer: const Drawer(
        child: MainDrawer(isMedicineSelected: true),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsCode.primary_color,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Image.asset(
          Images.logo,
          scale: 25,
          color: Colors.white,
        ),
        leading: IconButton(onPressed: (){
          _drawer.currentState!.openDrawer();
        }, icon: const Icon(Icons.menu, size: 25,)),
        actions: <Widget>[
          IconButton(
            icon: const Stack(
              children: [
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                Positioned(
                  child: Icon(
                    Icons.brightness_1,
                    color: Colors.red,
                    size: 9,
                  ),
                )
              ],
            ),
            onPressed: () {
            },
          ),

        ],
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * .05,
            width: Get.width,
            decoration: const BoxDecoration(
                color: ColorsCode.primary_color, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
            ),
          ),
          Style.distan_size20,
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                hintText: "Search",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorsCode.primary_color)
                ),
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          Style.distan_size10,
          Expanded(
            child: _foundUsers.isNotEmpty
                ? Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: ListView.builder(
              itemCount: _foundUsers.length,
              itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.white,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    trailing: GestureDetector(
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context){
                              return const Dialog(
                                child: AddMedicine(),
                              );
                            }
                        );
                      },
                      child: Container(
                        height: Get.height * .04,
                        width: Get.width * .250,
                        color: ColorsCode.primary_color,
                        child: const Center(child: Text("Add to card", style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                    title: Text(_foundUsers[index]['name']),
                    subtitle: Text(
                        'Generic : ${_foundUsers[index]["Generic"].toString()}'),
                  ),
              ),
            ),
                )
                : const Text(
              'No results found',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
