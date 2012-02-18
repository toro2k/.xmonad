module Toro.Keys where

import System.Exit (exitSuccess)

import XMonad.Core (io, spawn)
import XMonad.Operations
import XMonad.StackSet
import XMonad.Layout
import XMonad.Actions.CycleWS
import XMonad.Actions.DynamicWorkspaces
import XMonad.Prompt.Shell
import XMonad.Util.EZConfig

import qualified Toro.Prompt

map _ = mkKeymap undefined $ [

        -- stopping and restarting xmonad        
          ("M4-q", io exitSuccess)
        , ("M4-r", restart "xmonad" True)

        -- run applications
        , ("M4-<Return>", shellPrompt Toro.Prompt.config)          

        -- windows 
        , ("M4-n", windows focusDown)
        , ("M4-m", windows shiftMaster)
        , ("M4-k", kill)

        -- workspaces
        , ("M4-u M4-n", moveTo Next HiddenWS)
        , ("M4-u M4-<Return>", addWorkspacePrompt Toro.Prompt.config)
        , ("M4-u M4-k", removeEmptyWorkspace)

        -- screens
        , ("M4-i M4-n", nextScreen)
        , ("M4-i M4-m", shiftNextScreen)
        , ("M4-i M4-b", swapNextScreen)

        --layouts
        , ("M4-<Space>", sendMessage NextLayout)

        -- volume controls
	, ("<XF86AudioMute>", spawn "amixer set Master toggle") 
	, ("<XF86AudioRaiseVolume>", spawn "amixer set Master 5%+") 
	, ("<XF86AudioLowerVolume>", spawn "amixer set Master 5%-") 
        ]
