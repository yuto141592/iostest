# ios/Flutter/podhelper.rb

def flutter_install_all_ios_pods(flutter_application_path)
    # Flutterのポッドインストール処理
    flutter_root = File.expand_path('..', flutter_application_path)
    flutter_podspec = File.join(flutter_root, '.ios', 'Flutter', 'flutter_export_environment.sh')
    
    eval(File.read(flutter_podspec))
    pod 'Flutter', :path => flutter_root + '/Flutter'
    # 追加のポッド設定が必要な場合はここに追加
  end
  