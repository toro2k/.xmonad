module Toro.Hooks where

import System.IO (hPutStrLn)

import XMonad.Layout
import XMonad.Layout.Grid
import XMonad.Hooks.ManageDocks (avoidStruts)
import XMonad.Hooks.DynamicLog
import XMonad.Util.Cursor

layoutHook = avoidStruts (Full ||| Grid)

    
logHook xmobarHandle = dynamicLogWithPP defaultPP {
                           ppOutput = hPutStrLn xmobarHandle
                         
                         , ppOrder = \(w:_:_:e) -> w:e
                         , ppSep = "  ||  "
                         , ppTitle = xmobarColor "#eeeeec" ""

                         , ppCurrent = wrap "[" "]"
                         , ppHidden  = id
                         , ppHiddenNoWindows = const ""
                         }

startupHook = setDefaultCursor xC_left_ptr