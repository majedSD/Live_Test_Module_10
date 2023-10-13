/**
 * -----------------------Majedul Islam---------------------
 * -----------------------Live Test Module-10---------------
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectionScreen(),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  List<String> selectedItems = [];
  int Total=0;
  void toggleItemSelection(String item) {
    if (selectedItems.contains(item)) {
      setState(() {
        selectedItems.remove(item);
      });
    } else {
      setState(() {
        selectedItems.add(item);
      });
    }
  }

  void showSelectedItemsDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 150,
            width: 100,
            child: Column(
              children: [
                Text('Selected Items',style:TextStyle(fontSize: 20),),
                SizedBox(height: 10,),
                Text('Number of Selected items ${Total}'),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(''),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child:Text('Close'))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            tileColor: selectedItems.contains(items[index]) ? Colors.blue : null,
            onTap: () {
              toggleItemSelection(items[index]);
              setState(() {
                Total++;
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSelectedItemsDialog();
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
