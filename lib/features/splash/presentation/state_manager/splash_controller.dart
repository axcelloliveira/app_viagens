import 'package:get/get.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viagens_app/comuns/custom_error_snackbar.dart';
import 'package:viagens_app/comuns/custom_success_snackbar.dart';

class SplashController extends GetxController {
  LocalAuthentication localAuth = LocalAuthentication();
  bool hasFingerPrintLock = false;
  bool hasFaceLock = false;
  bool isUserAuthenticated = false;
  bool biometricsAvaliable = false;
  late SharedPreferences access;

  @override
  void onInit() {
    super.onInit();
    _getAllBiometrics();
    authenticateUser();
  }

  @override
  void onClose() {}

  void _getAllBiometrics() async {
    bool hasLocalAuthentication = await localAuth.canCheckBiometrics;

    if (hasLocalAuthentication) {
      biometricsAvaliable = true;
      List<BiometricType> availableBiometrics =
          await localAuth.getAvailableBiometrics();
      hasFaceLock = availableBiometrics.contains(BiometricType.face);
      hasFingerPrintLock =
          availableBiometrics.contains(BiometricType.fingerprint);
    } else {
      biometricsAvaliable = false;
    }
    update();
  }

  void authenticateUser() async {
    access = await SharedPreferences.getInstance();
    String localAccess = access.getString("username").toString();
    if (localAccess != null || localAccess != '') {
      if (biometricsAvaliable) {
        try {
          const androidMessage = AndroidAuthMessages(
            signInTitle: 'Biometria Requerida',
            cancelButton: 'Cancelar',
            goToSettingsButton: 'Configurações',
            goToSettingsDescription:
                'Configure a validação por biometria ou FaceID.',
            biometricHint: '',
          );

          isUserAuthenticated = await localAuth.authenticate(
            localizedReason: 'Autentique sua identidade',
            biometricOnly: true,
            useErrorDialogs: true,
            stickyAuth: true,
            androidAuthStrings: androidMessage,
          );
          if (isUserAuthenticated) {
            showSuccessSnackBar(message: 'Você foi autenticado!');
            await Future.delayed(const Duration(seconds: 2));
            Get.offAndToNamed('/MenuPage');
          } else {
            Get.offAndToNamed('/login');
            showErrorSnackBar(message: "Faça login utilizando usuário e senha");
          }
        } catch (e) {
          Get.offAndToNamed('/login');
          showErrorSnackBar(
              message:
                  "A validação biometrica falhou, faça login utilizando login e senha.");
        }
      } else {
        Get.offAndToNamed('/login');
      }
    } else {
      Get.offAndToNamed('/login');
    }
  }
}
