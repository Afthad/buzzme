import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 var _locations = ['Chavadi mukk',];
 var _locations2 = ['Kazhakootam',];
  String? selectedLocation = 'Chavadi mukk';
  String ?selectedLocation2 = 'Kazhakootam';
  bool isSearched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Buzzme'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text('From'),
          SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text('Select From'),

                                  value: selectedLocation,
                                  icon: const Icon(Icons.location_on),
                                  iconSize: 20,
                                  elevation: 16,
                                  underline: Container(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedLocation = newValue;
                                    });
                                  },
                                  items: List.generate(
                                    _locations.length,
                                    (index) => DropdownMenuItem(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          _locations[index] 
                                        ),
                                      ),
                                      value: _locations[index],
                                    ),
                                  ),
                                ),
              ),
              ),
              SizedBox(height: 20,),
          Text('To'),
          SizedBox(height: 10,),
              Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.orange),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: DropdownButton<String>(
                                  isExpanded: true,
                                hint: Text('Select To'),
                                
                                  value: selectedLocation2,
                                  icon: const Icon(Icons.location_on),
                                  iconSize: 20,
                                  elevation: 16,
                                  underline: Container(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedLocation2 = newValue;
                                    });
                                  },
                                  items: List.generate(
                                    _locations2.length,
                                    (index) => DropdownMenuItem(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          _locations2[index] 
                                        ),
                                      ),
                                      value: _locations2[index],
                                    ),
                                  ),
                                ),
              ),
              ),
              SizedBox(height: 20,),

              MaterialButton(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 
                onPressed: (){
                   Future.delayed(Duration(seconds: 5), () {
                     isSearched=!isSearched;
                  
                    setState(() {
                      
                    });
          
        });
                    
                }, child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Buzzme'),
                ),
                
              color:Colors.orange,),
              SizedBox(height: 20,),
         isSearched? Image.asset('images/13.jpeg'):Container()
          ],
        ),
      ),
      
    );
  }
}