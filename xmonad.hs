import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Grid
import XMonad.Layout.Named
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/brendon/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = myLayoutHook
        , logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "green" "" . shorten 50
            }
        , modMask = mod4Mask
        , normalBorderColor = "#000000"
        , focusedBorderColor = "#000000"
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_a), spawn "chromium-browser")
        , ((mod4Mask .|. shiftMask, xK_l), spawn "xscreensaver-command -lock")
        , ((mod4Mask .|. shiftMask, xK_h), spawn "sudo /usr/sbin/pm-hibernate")
        , ((mod4Mask .|. shiftMask, xK_s), spawn "sudo /usr/sbin/pm-suspend")
        ]

tallLayout = Tall 1 (3/100) (1/2)
myLayoutHook = avoidStrutsOn [U] (
        tallLayout
    ||| named "Wide" (Mirror tallLayout)
    ||| Full
    ||| Grid)
