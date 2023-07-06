import 'package:flutter/material.dart';
import 'package:model_with_asif_taj/own%20model%20concept/own_model.dart';

class HomeScreenOfOwnModel extends StatelessWidget {
  const HomeScreenOfOwnModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Own Model'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Colors.amber, //New
                    blurRadius: 25.0,
                    offset: Offset(0, 25))
              ],
            ),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.red),
              child: ListView.builder(
                itemCount: ContainerModelList.length,
                itemBuilder: (context, index) {
                  return Text(ContainerModelList[index].string.toString());
                },
              ),
            ),
          ),
        )
        //  GridView.builder(
        //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //       maxCrossAxisExtent: 100,
        //       childAspectRatio: 5 / 4,
        //       crossAxisSpacing: 20,
        //       mainAxisSpacing: 20),
        //   itemCount: ContainerModelList.length,
        //   itemBuilder: ((BuildContext context, index) {
        //     return Container(
        //         height: 80,
        //         decoration: BoxDecoration(color: Colors.amber),
        //         child: Text(ContainerModelList[index].title));
        //   }),
        // ),
        );
  }
}
