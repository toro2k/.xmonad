module Toro.Hooks where

import XMonad.Layout
import XMonad.Hooks.ManageDocks (avoidStruts)
import XMonad.Util.Cursor

layoutHook = avoidStruts $
             Full |||
             Tall 1 (5/100) (1/2)

startupHook = setDefaultCursor xC_left_ptr