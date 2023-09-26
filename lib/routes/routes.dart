import 'package:get/get.dart';

import '../pages/appoinment/appoinmentWidget/emegergency_patient_detlas.dart';
import '../pages/appoinment/appoinmentWidget/offline_appoinment_details.dart';
import '../pages/appoinment/appoinmentWidget/patient_details.dart';
import '../pages/appoinment/today_appoinment_list.dart';
import '../pages/chamber/chamber_list.dart';
import '../pages/dashboard/dashboard.dart';
import '../pages/familly/familly_add.dart';
import '../pages/familly/familly_list.dart';
import '../pages/fees/Fee_page.dart';
import '../pages/forget_login/new_password_for_login .dart';
import '../pages/forget_login/otp_send_for_login.dart';
import '../pages/forget_login/otp_verify_for_login.dart';
import '../pages/mobile_sign_in_page.dart';
import '../pages/notification/notification_page.dart';
import '../pages/otp_send_for_registration.dart';
import '../pages/otp_verify_for_registration.dart';
import '../pages/pacentlist_doctor_completed/pacent_doctor_completed_list.dart';
import '../pages/prescription/Prescription_page.dart';
import '../pages/prescription/emergency_prescription/emergncey_prescription_page.dart';
import '../pages/prescription/online_prescription/online_prescription_page.dart';
import '../pages/prescription/prescription_pdf.dart';
import '../pages/profile/profile_page.dart';
import '../pages/profile/profile_update_page.dart';
import '../pages/refer_pacent/refer_page.dart';
import '../pages/registration_page.dart';
import '../pages/schedule/schedule_page.dart';
import '../pages/staflist/staf_list.dart';
import '../pages/transaction/transaction_page.dart';
import '../pages/video_call_page.dart';
import '../pages/wallets/wallete_page.dart';
import '../pages/withdraw/confirm_withdraw.dart';
import '../pages/withdraw/withdraw_message.dart';
import '../pages/withdraw/withdraw_page.dart';
import '../splashScreen.dart';
import '../start_page.dart';

class RouteManeger {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String language = '/language';
  static const String mobilePhoneVerification = '/mobile-phone-verification';
  static const String otpVerifyForRegistration = '/otp-verify-for-registration';
  static const String doctorRegistration = '/doctor-registration';
  static const String onBoarding = '/on-boarding';
  static const String mobileSignIn = '/mobile-sign-in';
  static const String signUp = '/sign-up';
  static const String verification = '/verification';
  static const String accessLocation = '/access-location';
  static const String pickMap = '/pick-map';
  static const String interest = '/interest';
  static const String main = '/main';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String dashboard = '/dashboard';
  static const String todayAppoinmentList = '/today-appoinment-list';
  static const String patientDetails = '/patient-details';
  static const String emergencypatientDetails = '/emergency-patient-details';
  static const String videoCallPage = '/video-call-Page';
  static const String offlinepatientDetails = '/offline-patient-details';
  static const String offlinepatienname = '/offline-patientname';
  static const String emergncyprescription = '/emergncy-perscription';
  static const String onlineprescription = '/onlin-perscription';

  static const String chamberList = '/chamber-list';
  static const String profilePage = '/profile-page';
  static const String transactionPage = '/transaction-page';
  static const String walletePage = '/wallete-page';
  static const String withdrawPage = '/withdraw';
  static const String confirmWithDrawPage = '/confirm-withdraw-page';
  static const String withdrawMessage = '/withdraw-message';
  static const String famillyList = '/familly-list';
  static const String famillyListAdd = '/familly-list-add';
  // ignore: constant_identifier_names
  static const String StafList = '/staf-list';

  static const String mobilePhoneVerificationLogin = '/mobile-phone-login';
  static const String otpVerifyForLogin = '/otp-verify-for-login';
  static const String newpasswordForLogin = '/otp-verify-for-login';
  static const String schedule = '/schedulelist';
  static const String prescriptionpdf = '/prescriptionpdf';

  static const String search = '/search';
  static const String restaurant = '/restaurant';
  static const String orderDetails = '/order-details';
  static const String profile = '/profile';
  static const String updateProfile = '/update-profile';
  static const String coupon = '/coupon';
  static const String notification = '/notification';
  static const String map = '/map';
  static const String address = '/address';
  static const String orderSuccess = '/order-successful';
  static const String payment = '/payment';
  static const String checkout = '/checkout';
  static const String orderTracking = '/track-order';
  static const String basicCampaign = '/basic-campaign';
  static const String html = '/html';
  static const String categories = '/categories';
  static const String categoryProduct = '/category-product';
  static const String popularFoods = '/popular-foods';
  static const String itemCampaign = '/item-campaign';
  static const String support = '/help-and-support';
  static const String rateReview = '/rate-and-review';
  static const String update = '/update';
  static const String cart = '/cart';
  static const String addAddress = '/add-address';
  static const String restaurantReview = '/restaurant-review';
  static const String allRestaurants = '/restaurants';
  static const String fees = '/fees';
  static const String doctor_completed_pacent = '/doctor_completed_pacent';

  static const String profileupdate = '/profileupdate';
  static const String referpacent = '/referpacent';
  static String getInitialRoute() => initial;
  static String getSplashRoute() => splash;
  // static String mobileSingIn() => mobileSignIn;
  static String getLanguageRoute(String page) => '$language?page=$page';
  static String getOnBoardingRoute() => onBoarding;
  // static String getSignInRoute(String page) => '$signIn?page=$page';
  static String getSignUpRoute() => signUp;
  static String getVerificationRoute(
      String number, String token, String page, String pass) {
    return '$verification?page=$page&number=$number&token=$token&pass=$pass';
  }

//   static String getAccessLocationRoute(String page) =>
//       '$accessLocation?page=$page';
//   static String getPickMapRoute(String page, bool canRoute) =>
//       '$pickMap?page=$page&route=${canRoute.toString()}';
//   static String getInterestRoute() => '$interest';
//   static String getMainRoute(String page) => '$main?page=$page';
//   static String getForgotPassRoute() => '$forgotPassword';
//   static String getResetPasswordRoute(
//           String phone, String token, String page) =>
//       '$resetPassword?phone=$phone&token=$token&page=$page';
//   static String getSearchRoute() => '$search';
//   static String getRestaurantRoute(int id) => '$restaurant?id=$id';
//   static String getOrderDetailsRoute(int orderID) {
//     return '$orderDetails?id=$orderID';
//   }

//   static String getProfileRoute() => '$profile';
//   static String getUpdateProfileRoute() => '$updateProfile';
//   static String getCouponRoute() => '$coupon';
//   static String getNotificationRoute() => '$notification';
//   static String getMapRoute(AddressModel addressModel, String page) {
//     List<int> _encoded = utf8.encode(jsonEncode(addressModel.toJson()));
//     String _data = base64Encode(_encoded);
//     return '$map?address=$_data&page=$page';
//   }

//   static String getAddressRoute() => '$address';
//   static String getOrderSuccessRoute(String orderID, String status) =>
//       '$orderSuccess?id=$orderID&status=$status';
//   static String getPaymentRoute(String id, int user) =>
//       '$payment?id=$id&user=$user';
//   static String getCheckoutRoute(String page) => '$checkout?page=$page';
//   static String getOrderTrackingRoute(int id) => '$orderTracking?id=$id';
//   static String getBasicCampaignRoute(int id, String title, String image) =>
//       '$basicCampaign?id=$id&image=$image&title=$title';
//   static String getHtmlRoute(String page) => '$html?page=$page';
//   static String getCategoryRoute() => '$categories';
//   static String getCategoryProductRoute(int id, String name) {
//     List<int> _encoded = utf8.encode(name);
//     String _data = base64Encode(_encoded);
//     return '$categoryProduct?id=$id&name=$_data';
//   }

//   static String getPopularFoodRoute(bool isPopular) =>
//       '$popularFoods?page=${isPopular ? 'popular' : 'reviewed'}';
//   static String getItemCampaignRoute() => '$itemCampaign';
//   static String getSupportRoute() => '$support';
//   static String getReviewRoute() => '$rateReview';
//   static String getUpdateRoute(bool isUpdate) =>
//       '$update?update=${isUpdate.toString()}';
//   static String getCartRoute() => '$cart';
//   static String getAddAddressRoute() => '$addAddress';
//   static String getRestaurantReviewRoute(int restaurantID) =>
//       '$restaurantReview?id=$restaurantID';
//   static String getAllRestaurantRoute(String page) =>
//       '$allRestaurants?page=$page';
// }

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => const StartPageState(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: mobileSignIn,
      page: () => const MobileSignInView(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: mobilePhoneVerification,
      page: () => OtpSendForRegitration(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: otpVerifyForRegistration,
      page: () => OtpVerifyForRegistration(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: doctorRegistration,
      page: () => RegistrationPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: dashboard,
      page: () => DashboardPage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: profilePage,
      page: () => ProfilePage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: videoCallPage,
      page: () => const VideoCallPage(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: todayAppoinmentList,
      page: () => TodayAppoinmentList(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: patientDetails,
      page: () => PatientDetailsPage(Get.arguments),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: emergencypatientDetails,
      page: () => EmergencyPatientDetailsPage(Get.arguments),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: offlinepatientDetails,
      page: () => OffilenineDetailsPage(Get.arguments),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    // GetPage(
    //   name: offlinepatienname,
    //   page: () => Prescription(Get.arguments),
    //   // transition: Transition.leftToRightWithFade,
    //   // transitionDuration: const Duration(milliseconds: 500),
    // ),
    GetPage(
      name: chamberList,
      page: () => ChamberList(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: transactionPage,
      page: () => TransactionPage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: walletePage,
      page: () => WalletePage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: withdrawPage,
      page: () => WithdrawPage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: confirmWithDrawPage,
      page: () => const ConfirmWithDrawButton(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: withdrawMessage,
      page: () => const WithdrawMessage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: famillyList,
      page: () => FamillyListPage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: famillyListAdd,
      page: () => FamillyAdd(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: StafList,
      page: () => StafListPage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: mobilePhoneVerificationLogin,
      page: () => OtpSendForLogin(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: otpVerifyForLogin,
      page: () => OtpVerifyForLogin(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: newpasswordForLogin,
      page: () => NewPasswordForLogin(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: schedule,
      // ignore: prefer_const_constructors
      page: () => SchedulPage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: fees,
      // ignore: prefer_const_constructors
      page: () => FeeDoctor_page(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: prescriptionpdf,
      page: () => PrescriptionPdf(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: emergncyprescription,
      page: () => EmergncyPrescription(Get.arguments),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: onlineprescription,
      page: () => OnlinePrescription(Get.arguments),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: profileupdate,
      page: () => ProfileUpdatePage(),
      // transition: Transition.leftToRightWithFade,
      // transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: referpacent,
      page: () => const ReferPage(),

    ), GetPage(
      name: doctor_completed_pacent,
      page: () =>  DoctorCompletedList(),

    ), GetPage(
      name: notification,
      page: () =>  NotificationPage(),

    ),
    GetPage(name: splash, page: () => const SplashScreen()),
  ];
}
