module Toro.Hooks where

import XMonad.Layout
import XMonad.Hooks.ManageDocks (avoidStruts)
import XMonad.Util.Cursor

layoutHook = avoidStruts $
             Full |||
             Tall 1 (1/100) (2/3)

startupHook = setDefaultCursor xC_left_ptr