import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelapp_bwa/models/transaction_model.dart';

class TransactionService {
  CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountOfTraveler': transaction.amountOfTraveler,
        'selectedSeats': transaction.selectedSeat,
        'insurace': transaction.insurance,
        'refundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandTotal': transaction.grandTotal,
      });
    } catch (e) {
      rethrow;
    }
  }
Future<List<TransactionModel>> fetchTransactions() async {
    try {
      QuerySnapshot result = await _transactionReference.get();
      List<TransactionModel> transactions = result.docs.map(
        (e) {
          return TransactionModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();
      return transactions;
    } catch (e) {
      throw e;
    }
  }
  
}
