class SplashViewModel {
  Future<void> aguardarSplash() async {
    await Future.delayed(const Duration(seconds: 3));
  }
}