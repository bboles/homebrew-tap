class UnityOpenjdk2020319f1 < Formula
  desc "OpenJDK for Unity"
  homepage "https://unity.com/products"
  url "http://download.unity3d.com/download_unity/open-jdk/open-jdk-mac-x64/jdk8u172-b11_4be8440cc514099cfe1b50cbc74128f6955cd90fd5afe15ea7be60f832de67b4.zip"
  sha256 "01c8518f34d083b6adf57f1a3a7cff76e78dc0a2523b6332d10a0f30fcb8d308"

  depends_on 'https://github.com/bboles/homebrew-tap/blob/main/Casks/unity-android_2020.3.19f1.rb'

  def install
    Dir.mkdir '/Applications/Unity.2020.3.19f1/PlaybackEngines/AndroidPlayer/OpenJDK'
    system "unzip", "jdk8u172-b11_4be8440cc514099cfe1b50cbc74128f6955cd90fd5afe15ea7be60f832de67b4.zip", "-d", "/Applications/Unity.2020.3.19f1/PlaybackEngines/AndroidPlayer/OpenJDK"
  end

end
