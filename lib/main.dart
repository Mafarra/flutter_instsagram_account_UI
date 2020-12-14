import 'package:flutter/material.dart';

import 'custom_drawer_widget.dart';
import 'galary_list.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H.W Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(color: Colors.black),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  TextStyle myStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        toolbarHeight: 44,
        elevation: 2.5,
        title: Text(
          'STYLISH',
          style: myStyle,
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.shopping_cart_outlined, color: Colors.black45),
              SizedBox(width: 8),
              Icon(Icons.menu, color: Colors.black54),
              SizedBox(width: 16),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 44, //'assts/Mamdouh alfarra.jpg'
                    backgroundImage: AssetImage('assets/Mamdouh alfarra.jpg'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomContainer(),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 35.0),
                //   child: CustomContainer(),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: CustomContainer2(
                  'Home accessories,some information about us',
                  '+970595042785',
                  'Gaza,Palestine'),
            ),
            SizedBox(height: 4),
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    width: 100,
                    height: 25,
                    btnTitle: 'Add Product',
                  ),
                  CustomButton(
                    width: 100,
                    height: 25,
                    btnTitle: 'Share',
                  ),
                  CustomButton(
                    width: 100,
                    height: 25,
                    btnTitle: 'Contact Us',
                  ),
                ],
              ),
            ),
            Divider(
                //height: 6,
                ),
            Expanded(child: GalaryViewImage()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
                color: Colors.grey[900],
              )),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [
                  Icon(Icons.favorite_border),
                  CircleAvatar(
                    backgroundColor: Colors.red[900],
                    radius: 3,
                  ),
                ],
              )),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person,
            ),
          )
        ],
      ),
    );
  }
}

class GalaryViewImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 3,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
        ),
        itemCount: Images().images.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              //clipBehavior: Clip.hardEdge,
              image: DecorationImage(
                image: AssetImage(Images().images[index]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  TextStyle myStyle2 = TextStyle(
    color: Colors.black54,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomColumn('1.252', 'posts'),
              CustomColumn('4m', 'followers'),
              CustomColumn('256', 'following'),
            ],
          ),
          CustomButton(
            height: 29,
            width: 190,
            btnTitle: 'Edit Profile',
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomContainer2 extends StatelessWidget {
  String txt1Details, txt2Phone, txt3Address;
  CustomContainer2(this.txt1Details, this.txt2Phone, this.txt3Address);
  TextStyle myStyle2 = TextStyle(
    color: Colors.grey[600],
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  TextStyle myStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  TextStyle myStyleBlue = TextStyle(
    color: Colors.blue,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Home Furniture',
              style: myStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              txt1Details,
              style: myStyle2,
            ),
            SizedBox(
              height: 8,
            ),
            Text('Contact us:'),
            Text(txt2Phone, style: myStyleBlue),
            SizedBox(
              height: 4,
            ),
            Text(txt3Address, style: myStyle2),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomColumn extends StatelessWidget {
  String text1, text2;
  CustomColumn(this.text1, this.text2);
  TextStyle myStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  TextStyle myStyle2 = TextStyle(
    color: Colors.grey[600],
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          text1,
          style: myStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text2,
          style: myStyle2,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  double height, width;
  String btnTitle;
  CustomButton({this.height, this.width, this.btnTitle});
  TextStyle myStyle2 = TextStyle(
    color: Colors.black54,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.grey[200],
        ),
        child: FlatButton(
            onPressed: () {},
            child: Text(
              btnTitle,
              style: myStyle2,
            )));
  }
}
