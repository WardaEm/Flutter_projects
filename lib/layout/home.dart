import 'package:flutter/material.dart';
import 'package:untitled/layout/sqldb.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SqlDb sqlDb=SqlDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
                child: MaterialButton(color: Colors.red,textColor: Colors.white,onPressed: ()async{
                 int response= await sqlDb.insertData("INSERT INTO 'notes' (note)VALUES ('note one')");
                 print(response);
                },child: Text('insert data'),),),
        SizedBox(height: 20,),
        Center(
          child: MaterialButton(color: Colors.red,textColor: Colors.white,onPressed: ()async{
       List<Map>response=  await sqlDb.readData("SELECT * FROM 'notes' ");
       print(response);
          },child: Text('Read data'),),
        ),
            SizedBox(height: 20,),
            Center(
              child: MaterialButton(color: Colors.red,textColor: Colors.white,onPressed: ()async{
                int response=  await sqlDb.updateData("UPDATE 'notes' SET 'note' = 'note six' WHERE id =6 ");
                print(response);
              },child: Text('update data'),),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), onPressed: ()  async {

      int response=  await sqlDb.deleteData("DELETE FROM 'notes' WHERE id=9");
        print(response);

      }
        , mini: true,),

    );
  }
}
