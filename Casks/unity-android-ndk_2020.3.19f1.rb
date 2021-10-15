cask "unity-android-ndk_2020.3.19f1" do
  version "2020.3.19f1"
  sha256 "5851115c6fc4cce26bc320295b52da240665d7ff89bda2f5d5af1887582f5c48"

  url "https://dl.google.com/android/repository/android-ndk-r21d-darwin-x86_64.zip"
  name "Android NDK Tools",
  desc "Android NDK Tools for use specifically with Unity",
  homepage "https://unity.com/products"

  _ndk_path = "/Applications/Unity.#{version}/PlaybackEngines/AndroidPlayer/NDK"
  installer script: {
    executable: "/bin/cp",
    args:       ["-pr", "#{caskroom_path}/#{version}/", "#{_ndk_path}"],
    sudo:       true,
  }

  preflight do
    system '/usr/bin/sudo', '-E', '--', 'mkdir', "#{_ndk_path}"
  end

  postflight do
    set_ownership("#{_ndk_path}", user: 'root', group: 'wheel')
  end

  depends_on cask: "unity-android_#{version.before_comma}"
end
