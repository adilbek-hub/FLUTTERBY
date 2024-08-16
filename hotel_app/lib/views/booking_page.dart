import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/hotel_bloc.dart';
import 'package:hotel_app/components/components_export.dart';
import 'package:hotel_app/constants/constants_export.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

bool _isValidEmail = true;

class _BookingPageState extends State<BookingPage> {
  List<Widget> tourists = [];
  int touristCount = 0;
  bool isFirstExpanded = true;
  bool isSecondExpanded = false;
  bool isAddTourist = false;

  void toggleFirstExpansion() {
    setState(() {
      isFirstExpanded = !isFirstExpanded;
    });
  }

  void toggleSecondExpansion() {
    setState(() {
      isSecondExpanded = !isSecondExpanded;
    });
  }

  void toggleAddTuorist() {
    setState(() {
      isAddTourist = !isAddTourist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          final tourPrice = state.bookingModel.tourPrice;
          final fuelCharge = state.bookingModel.fuelCharge;
          final serviceCharge = state.bookingModel.serviceCharge;
          return Scaffold(
            backgroundColor: const Color(0xffF6F6F9),
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 100,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              title: const Text(
                AppTexts.bronirovanie,
                style: AppTextStyles.viewNamesStyle,
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Form(
                key: controllers.formKey,
                child: Column(
                  children: [
                    AppSize.height10,
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const LikeContainer(),
                            AppSize.height8,
                            Text(
                              state.bookingModel.hotelName,
                              style: AppTextStyles.tStyle1,
                            ),
                            AppSize.height8,
                            Text(
                              state.bookingModel.hotelAdress,
                              style: AppTextStyles.tStyle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppSize.height8,
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HotelDetails(),
                          ],
                        ),
                      ),
                    ),
                    AppSize.height8,
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              AppTexts.informatsiaOPokupatel,
                              style: AppTextStyles.tStyle1,
                            ),
                            AppSize.height20,
                            TextFormField(
                              controller: variables.phoneNumber.textController,
                              inputFormatters: [
                                const UpperCaseTextFormatter(),
                                variables.phoneNumber.formatter
                              ],
                              autocorrect: false,
                              keyboardType: variables.phoneNumber.textInputType,
                              // autovalidateMode: AutovalidateMode.always,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return AppTexts.phoneNumber;
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xffF6F6F9), width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xffF6F6F9),
                                    width: 2.0,
                                  ),
                                ),
                                labelText: AppTexts.labelText,
                                hintText: variables.phoneNumber.hint,
                                hintStyle:
                                    const TextStyle(color: AppColors.grey),
                                fillColor: AppColors.containerScreen,
                                filled: true,
                                errorMaxLines: 1,
                              ),
                            ),
                            AppSize.height8,
                            TextFormField(
                              controller: controllers.emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return AppTexts.validateEPText;
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                      color: AppColors.containerScreen,
                                      width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    color: AppColors.containerScreen,
                                    width: 2.0,
                                  ),
                                ),
                                labelText: AppTexts.pochta,
                                hintText: AppTexts.examplemail,
                                errorText: _isValidEmail
                                    ? null
                                    : AppTexts.unCurrectNumber,
                                fillColor: AppColors.containerScreen,
                                filled: true,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _isValidEmail =
                                      RegExp(AppTexts.rEGEx).hasMatch(value);
                                });
                              },
                            ),
                            AppSize.height8,
                            const Text(
                              AppTexts.longText,
                              style: AppTextStyles.tStyle3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppSize.height8,
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppSize.height20,
                            SizedBox(
                              height: 200,
                              child: ListView(
                                children: [
                                  for (var tourist in tourists)
                                    ExpansionTile(
                                      title: tourist,
                                      children: [
                                        // ignore: avoid_unnecessary_containers
                                        Container(
                                          child: Column(
                                            children: [
                                              TextForms(
                                                controller: controllers
                                                    .nameEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return AppTexts.name;
                                                  }
                                                  return null;
                                                },
                                                labelText: AppTexts.imia,
                                                hintText: AppTexts.ivan,
                                                isValidEmail: _isValidEmail,
                                              ),
                                              TextForms(
                                                controller: controllers
                                                    .sureNameEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return AppTexts.sureName;
                                                  }
                                                  return null;
                                                },
                                                labelText: AppTexts.fio,
                                                hintText: AppTexts.ivanov,
                                                isValidEmail: _isValidEmail,
                                              ),
                                              TextForms(
                                                controller: controllers
                                                    .birthdayEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return AppTexts.birthday;
                                                  }
                                                  return null;
                                                },
                                                labelText: AppTexts.dayDirth,
                                                hintText: AppTexts.date,
                                                isValidEmail: _isValidEmail,
                                              ),
                                              TextForms(
                                                controller: controllers
                                                    .passportNumberEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return AppTexts
                                                        .passportNumber;
                                                  }
                                                  return null;
                                                },
                                                labelText: AppTexts
                                                    .labelTextPassportNumber,
                                                hintText:
                                                    AppTexts.hinTextNumber,
                                                isValidEmail: _isValidEmail,
                                              ),
                                              TextForms(
                                                controller: controllers
                                                    .periodOfThePassportEditingController,
                                                validator: (value) {
                                                  if (value == null ||
                                                      value.isEmpty) {
                                                    return AppTexts
                                                        .stokPassport;
                                                  }
                                                  return null;
                                                },
                                                labelText: AppTexts
                                                    .labelTextNumberPassport,
                                                hintText: AppTexts
                                                    .hinTextSrokPassport,
                                                isValidEmail: _isValidEmail,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  AppTexts.addTourist,
                                  style: AppTextStyles.tStyle1,
                                ),
                                SizedBox(
                                  child: Card(
                                    elevation: 2,
                                    color: AppColors.blue,
                                    child: IconButton(
                                      onPressed: () => addTourist(),
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppSize.height8,
                    const SumResultContainer(),
                    AppSize.height10,
                    CustomButtonContainer(
                        tourPrice: tourPrice,
                        fuelCharge: fuelCharge,
                        serviceCharge: serviceCharge),
                  ],
                ),
              ),
            ),
          );
        } else {
          return throw (AppTexts.error);
        }
      },
    );
  }

  void addTourist() {
    setState(() {
      touristCount++;
      if (touristCount == 1) {
        tourists.add(
          const Column(
            children: [
              Row(
                children: [
                  Text(
                    AppTexts.firstTourist,
                    style: AppTextStyles.tStyle1,
                  ),
                ],
              ),
            ],
          ),
        );
      } else if (touristCount == 2) {
        tourists.add(
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppTexts.secondTourist,
                    style: AppTextStyles.tStyle1,
                  ),
                ],
              ),
            ],
          ),
        );
      } else if (touristCount == 3) {
        tourists.add(
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppTexts.thirdTourist,
                style: AppTextStyles.tStyle1,
              ),
            ],
          ),
        );
      }
    });
  }
}
