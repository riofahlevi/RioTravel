// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelapp_bwa/models/destination_model.dart';

class DestinationService {
  CollectionReference _destinationReference =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestination() async {
    try {
      QuerySnapshot result = await _destinationReference.get();
      List<DestinationModel> destinations = result.docs.map(
        (e) {
          return DestinationModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();
      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
