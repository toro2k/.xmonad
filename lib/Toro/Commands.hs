module Toro.Commands where

import XMonad.Operations (windows)
import XMonad.StackSet (view, shift)

focusWorkSpaceByName name = windows $ view name

moveWindowToWorkspace name = windows $ shift name