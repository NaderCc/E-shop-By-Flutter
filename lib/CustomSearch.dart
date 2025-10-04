
import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  List<String> searchWords;
  List<String> filterWords=[];
  CustomSearch({
    required this.searchWords,
  });

  @override
  List<Widget>? buildActions(BuildContext context) {
    return
        [
            MaterialButton(onPressed: (){
              query="";
            },child: Icon(Icons.close),)
        ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
      return MaterialButton(onPressed: (){
        close(context, null);
      },child: Icon(Icons.arrow_back),);
  }

  @override
  Widget buildResults(BuildContext context) {
      return Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
        if(query == "")
          {
            return ListView.builder(
                itemCount: searchWords.length,
                itemBuilder: (context,i)
            {
              return Card(

                child : Text("${searchWords[i]}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
              );
            });
          }
        else{
          filterWords=searchWords.where((x)=>x.contains(query)).toList();
          return ListView.builder(
              itemCount: filterWords.length,
              itemBuilder: (context,i)
              {
                return Card(

                  child : Text("${filterWords[i]}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                );
              });

        }
        //return Text("Cont",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),);
  }

}

