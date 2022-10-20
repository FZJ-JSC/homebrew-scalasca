cask "cube" do
  # .app bundles for 4.6 and 4.7 are missing Info.plist, stick with 4.5 for now
  version "4.5"
  sha256 "af568244578f5b1957992f9dc1b8eac90f87d2795d4ad9646ac9211898bdeb68"

  url "https://apps.fz-juelich.de/scalasca/releases/cube/#{version}/dist/Cube-#{version}.dmg",
      verified: "apps.fz-juelich.de/scalasca/"
  name "Cube"
  desc "Performance report explorer for Scalasca and Score-P"
  homepage "https://scalasca.org/software/cube-4.x/download.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/href=.*?Cube[._-]v?(\d+(?:\.\d+)+)\.d/i)
  end

  conflicts_with formula: "cubelib"

  app "Cube.app"
  # binary "#{appdir}/Cube.app/Contents/MacOS/cube"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube3to4"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube4to3"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_calltree"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_canonize"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_clean"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_cmp"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_commoncalltree"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_cut"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_derive"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_diff"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_dump"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_exclusify"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_inclusify"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_info"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_is_empty"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_mean"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_merge"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_nodeview"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_part"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_rank"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_regioninfo"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_remap2"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_sanity"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_server"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_stat"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_test"
  binary "#{appdir}/Cube.app/Contents/MacOS/cube_topoassist"
  # binary "#{appdir}/Cube.app/Contents/MacOS/cubegui-autocompletion.sh"
  # binary "#{appdir}/Cube.app/Contents/MacOS/cubegui-config"
  # binary "#{appdir}/Cube.app/Contents/MacOS/cubelib-config"
  # binary "#{appdir}/Cube.app/Contents/MacOS/cubew-config"
  # binary "#{appdir}/Cube.app/Contents/MacOS/maccubegui.sh"
  binary "#{appdir}/Cube.app/Contents/MacOS/tau2cube"

  zap trash: [
    "~/Library/Preferences/com.fz-juelich.Cube.plist",
    "~/Library/Preferences/com.fzj.Cube.plist",
    "~/Library/Saved Application State/com.fz-juelich.Cube.savedState",
  ]
end
