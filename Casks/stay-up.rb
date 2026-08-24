cask "stay-up" do
  version "0.1.0"
  sha256 "032249d3350822b843c58b2d6f2319731831eae0c9f8487c0648b807fbc7776f"

  url "https://github.com/tosaka07/stay-up/releases/download/v#{version}/StayUp-#{version}-universal.zip"
  name "StayUp"
  desc "Keeps your Mac awake with the lid closed, only while a task is running"
  homepage "https://github.com/tosaka07/stay-up"

  depends_on macos: ">= :tahoe"

  app "StayUp.app"
  binary "#{appdir}/StayUp.app/Contents/MacOS/stay-up"

  # 終了時にアプリ自身が disablesleep を 0 に戻す。
  # launchctl スタンザは置かない。quit より先に走るため、復元が済む前に
  # ヘルパーを落として disablesleep=1 を残す恐れがある。
  uninstall quit: "dev.tosaka.StayUp"

  zap trash: [
    "~/Library/Application Support/StayUp",
    "~/Library/Preferences/dev.tosaka.StayUp.plist",
  ]

  caveats <<~EOS
    ふたを閉じたときのスリープを抑止するには、StayUp の案内に従って
    root ヘルパーを登録し、「ログイン項目と機能拡張」で承認してください。

    アンインストールする前に、アプリの診断タブから「登録を解除」を
    実行してください。先に削除すると、root ヘルパーの登録だけが残ります。
  EOS
end
