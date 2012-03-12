module Toro.Prompt where

import XMonad.Prompt
    
config = defaultXPConfig {
           font = "-*-terminus-bold-*-*-*-16-*-*-*-*-*-*-"

         , bgColor = "#2e3436"
         , fgColor = "#eeeeec"
         , bgHLight = "#cc0000"
         , fgHLight = "#eeeeec"
                      
         , promptBorderWidth = 0
                               
         , position = Bottom
         }
