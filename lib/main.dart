import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:gyms/features/new_bsama_add_Fingerprint/domain/entities/new_finger_print_entity.dart';
import 'package:gyms/core/utils/simple_bloc_observer.dart';

import 'features/auth/login/domain/entities/employee_entity.dart';
import 'features/code/domain/entities/code_entity.dart';
import 'app.dart';
import 'core/utils/constants.dart';
import 'core/utils/functions/setup_service_locator.dart' as di;

void main() async {
// inside main
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await di.init();
  Hive.registerAdapter(EmployeeEntityAdapter());
  Hive.registerAdapter(CodeEntityAdapter());
  Hive.registerAdapter(NewFingerPrintEntityAdapter());

  await Hive.openBox<EmployeeEntity>(kEmployeeDataBox);
  await Hive.openBox<CodeEntity>(kCodeDataBox);
  await Hive.openBox('local_storage');
  await Hive.openBox<NewFingerPrintEntity>(kNewFingerPrintDataBox);

  await Hive.openBox<int>(kLogoutOptionDataBox);
  // await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyDMIrBhVGf-1wChY9X0G-M_KpdrpgjTJrY",
  //         authDomain: "hrms-fca3f.firebaseapp.com",
  //         projectId: "hrms-fca3f",
  //         storageBucket: "hrms-fca3f.appspot.com",
  //         messagingSenderId: "555764689958",
  //         appId: "1:555764689958:web:5dc5a9bbc5352b5054cae7",
  //         measurementId: "G-6ZK01XG5RC"));

  // await FirebaseMessaging.instance.setAutoInitEnabled(true);
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  runApp(const FingerPrint());
}
