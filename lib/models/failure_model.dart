// class FailureModel{
//   String? status;
//   Message? message;

//   FailureModel({this.status, this.message});

//   FailureModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message =
//         json['message'] != null ? Message.fromJson(json['message']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['status'] = status;
//     if (message != null) {
//       data['message'] = message!.toJson();
//     }
//     return data;
//   }
// }

// class Message {
//   List<String>? phoneNumber;

//   Message({this.phoneNumber});

//   Message.fromJson(Map<String, dynamic> json) {
//     phoneNumber = json['phone_number'].cast<String>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['phone_number'] = phoneNumber;
//     return data;
//   }
// }