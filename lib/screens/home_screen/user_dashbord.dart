import 'package:flutter/material.dart';

class UserDashbord extends StatefulWidget {
  const UserDashbord({super.key});

  @override
  State<UserDashbord> createState() => _UserDashbordState();
}

class _UserDashbordState extends State<UserDashbord> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Discover',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Find the best one',
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'search',
                  suffixIcon: const Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          const BorderSide(color: Color(0xFF18603B), width: 2)),
                ),
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: Image.asset(
                  'assets/home.png',
                  height: 150,
                  width: double.infinity,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Our categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('See all'))
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: IconListView(),
              )
            ]),
      ),
    )));
  }
}

class IconListView extends StatelessWidget {
  final List<Map<String, dynamic>> itemList = [
    {
      'icon': Icons.cleaning_services,
      'text': 'cleaning',
    },
    {
      'icon': Icons.home_repair_service,
      'text': 'Move home',
    },
    {
      'icon': Icons.air_rounded,
      'text': 'Ac repair',
    },
    {
      'icon': Icons.business,
      'text': 'business',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero, // Set padding to zero
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Align to the left
              children: [
                Icon(itemList[index]['icon'], size: 55),
                SizedBox(height: 8),
                Text(itemList[index]['text']),
              ],
            ),
          );
        },
      ),
    );
  }
}

// class UserDashbord extends StatefulWidget {
//   const UserDashbord({super.key});

//   @override
//   State<UserDashbord> createState() => _UserDashbordState();
// }

// class _UserDashbordState extends State<UserDashbord> {
  // final List<Map<String, dynamic>> itemList = [
  //   {
  //     'icon': Icons.cleaning_services,
  //     'text': 'cleaning',
  //   },
  //   {
  //     'icon': Icons.home_repair_service,
  //     'text': 'Move home',
  //   },
  //   {
  //     'icon': Icons.air_rounded,
  //     'text': 'Ac repair',
  //   },
  //   {
  //     'icon': Icons.business,
  //     'text': 'business',
  //   },
  // ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//             child: Container(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
              // const Text(
              //   'Discover',
              //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // ),
              // const Text(
              //   'Find the best one',
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              // TextField(
              //   onChanged: (value) {},
              //   decoration: InputDecoration(
              //     hintText: 'search',
              //     suffixIcon: const Icon(
              //       Icons.search,
              //     ),
              //     border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10.0),
              //         borderSide:
              //             const BorderSide(color: Color(0xFF18603B), width: 2)),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.zero,
              //   child: Image.asset(
              //     'assets/home.png',
              //     height: 140,
              //     width: double.infinity,
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     const Text(
              //       'Our categories',
              //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //     ),
              //     TextButton(onPressed: () {}, child: const Text('See all'))
              //   ],
              // ),
//               ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   itemCount: itemList.length,
//                   itemBuilder: (context, index) {
//                     final item = itemList[index];
//                     return ListTile(
//                       onTap: () {},
//                       leading: Column(
//                         children: [
//                           Icon(item['icon']),
//                           const SizedBox(height: 4),
//                           Text(item['text']),
//                         ],
//                       ),
//                     );
//                   })
//             ],
//           ),
//         )),
//       ),
//     );
//   }
// }
