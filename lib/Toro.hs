module Toro where

import XMonad.Main
import XMonad.Config
import XMonad.Core (XConfig(..))
import XMonad.Util.Run

import qualified Toro.Keys
import qualified Toro.Hooks

toroXMonad = do
  xmobarHandle <- spawnPipe "xmobar ~/.xmonad/xmobarrc"
  xmonad $ Toro.config xmobarHandle

config xmobarHandle = defaultConfig {

                        normalBorderColor = "#555753"
                      , focusedBorderColor = "#cc0000"
                      , borderWidth = 3
                                      
                      , workspaces = ["1", "2", "3"]
                                     
                      , keys = Toro.Keys.map
                      , focusFollowsMouse = False
                                            
                      , layoutHook  = Toro.Hooks.layoutHook
                      , logHook     = Toro.Hooks.logHook xmobarHandle
                      , startupHook = Toro.Hooks.startupHook
                      }
