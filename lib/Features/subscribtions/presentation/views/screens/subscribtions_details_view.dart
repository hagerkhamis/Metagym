import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gyms/features/subscribtions/domain/entities/subscribtions_entity.dart';
import 'package:gyms/features/subscribtions/presentation/views/widgets/subscribtion_details_body.dart';

import '../../../../bottom_nav/presentation/manger/cubit/bottom_nav_cubit.dart';

class SubscribtionsDetailsView extends StatelessWidget {
  const SubscribtionsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    SubscribtionsEntity subscribtionEntity;

    subscribtionEntity = BlocProvider.of<BottomNavCubit>(context).details!;

    return SafeArea(
      child: Scaffold(
        body: SubscribtionDetailsBody(subscribtionEntity: subscribtionEntity),
      ),
    );
  }
}
