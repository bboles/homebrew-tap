cask "unity-android-openjdk_2020.3.19f1" do
  version "2020.3.19f1"
  sha256 "01c8518f34d083b6adf57f1a3a7cff76e78dc0a2523b6332d10a0f30fcb8d308"

  url "http://download.unity3d.com/download_unity/open-jdk/open-jdk-mac-x64/jdk8u172-b11_4be8440cc514099cfe1b50cbc74128f6955cd90fd5afe15ea7be60f832de67b4.zip"
  name "OpenJDK for Android Build Support"
  desc "OpenJDK specifically for use with Unity"
  homepage "https://unity.com/products"

  installer script: {
    executable: "/usr/bin/unzip",
    args:       ["#{staged_path}/jdk8u172-b11_4be8440cc514099cfe1b50cbc74128f6955cd90fd5afe15ea7be60f832de67b4.zip", "-d", "/Applications/Unity.#{version}/PlaybackEngines/AndroidPlayer/OpenJDK"],
    sudo:       true,
  }

  depends_on cask: "unity-android_#{version.before_comma}"
end