module Toro.Prompt where

import XMonad.Prompt
    
config = defaultXPConfig {
           font = "xft:DejaVu Sans:size=10"

         , bgColor = "#2e3436"
         , fgColor = "#eeeeec"
         , bgHLight = "#cc0000"
         , fgHLight = "#eeeeec"
                      
         , promptBorderWidth = 0
                               
         , position = Bottom
         }