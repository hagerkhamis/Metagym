import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gyms/features/offers/presentation/manager/news_cubit/offers_cubit.dart';
import 'package:gyms/features/offers/presentation/views/widgets/argyment.dart';
import 'package:hive/hive.dart';
import 'package:gyms/core/widgets/empty_widget.dart';

import '../../../../../../core/locale/app_localizations.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/widgets/custom_loading_widget.dart';
import '../../../../../../core/widgets/error_text.dart';
import '../../../../auth/login/domain/entities/employee_entity.dart';
import '../../../data/models/my_messages_model/offers.dart';
import 'all_offers_list_item.dart';

// ignore: must_be_immutable
class OffersViewBody extends StatefulWidget {
  final bool home;

  const OffersViewBody({super.key, this.home = false});

  @override
  State<OffersViewBody> createState() => _OffersViewBodyState();
}

class _OffersViewBodyState extends State<OffersViewBody> {
  var box = Hive.box<EmployeeEntity>(kEmployeeDataBox);

  @override
  void initState() {
    _onInit();
    super.initState();
  }

  void _onInit() async {
    if (box.get(kEmployeeDataBox) != null) {
      await BlocProvider.of<OffersCubit>(context)
          .getAllOffers(box.get(kEmployeeDataBox)!.memId!.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    //  getAllMessages(context);
    final localStorage = Hive.box('local_storage');

    final localPath = localStorage.get('barcode_path');

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: BlocBuilder<OffersCubit, OffersState>(
        builder: (context, state) {
          if (state is FetchSuccessful) {
            AllOffersList offersList = state.data!;

            return ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: widget.home
                  ? offersList.length < 3
                      ? offersList.length
                      : 3
                  : state.data!.length,
              itemBuilder: (context, index) {
                return FadeInRight(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        kOffersDetailsScreenRoute,
                        arguments: offerDetails(
                          list: state.data,
                          index: index,
                        ),
                      ).then((result) {
                        // Do something with the result, if needed
                        BlocProvider.of<OffersCubit>(context).getAllOffers(
                            box.get(kEmployeeDataBox)!.memId!.toString());
                      });
                    },
                    child: AllOffersListItem(
                      home: widget.home,
                      offersList: offersList[index],
                      itemIndex: index,
                    ),
                  ),
                );
              },
            );
          } else if (state is FetchLoading) {
            return const Center(
              child: CustomLoadingWidget(
                loadingText: "جاري تحميل العروض",
              ),
            );
          } else if (state is FetchFailed) {
            return Column(
              children: [
                Image.file(
                  File(localPath),
                  width: 350,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                EmptyWidget(
                  text:
                      state.message == "1000" ? "افحص الانترنت" : state.message,
                ),
              ],
            );
          } else if (box.get(kEmployeeDataBox) == null) {
            return ErrorText(
                image: "assets/images/should_login.png",
                text: AppLocalizations.of(context)!
                    .translate('you_should_login_first')!);
          } else {
            return const ErrorText(text: "حدث خطأ ما");
          }
        },
      ),
    );
  }
}
