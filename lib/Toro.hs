module Toro where

import XMonad.Main
import XMonad.Config
import XMonad.Core (XConfig(..))
import XMonad.Util.Run

import qualified Toro.Keys
import qualified Toro.Hooks

toroXMonad = xmonad config

config = defaultConfig {
    normalBorderColor = "#555753"
  , focusedBorderColor = "#cc0000"
  , borderWidth = 5
                  
  , workspaces = ["www", "dev", "var"]
                 
  , keys = Toro.Keys.map
  , focusFollowsMouse = False
                        
  , layoutHook  = Toro.Hooks.layoutHook
  , startupHook = Toro.Hooks.startupHook
  }
