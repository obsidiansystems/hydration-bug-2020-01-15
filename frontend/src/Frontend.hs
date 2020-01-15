{-# LANGUAGE OverloadedStrings #-}
module Frontend where


import Obelisk.Frontend
import Obelisk.Route

import Reflex.Dom.Core

import Common.Route


frontend :: Frontend (R FrontendRoute)
frontend = Frontend
  { _frontend_head = pure ()
  , _frontend_body = do
      let svgRootCfg = def
            & elementConfig_namespace .~ Just "http://www.w3.org/2000/svg"
            & elementConfig_initialAttributes .~ ("width" =: "100%" <> "height" =: "100%" <> "viewBox" =: "0 0 1536 2048")
      _ <- element "svg" svgRootCfg $ do
        dyn_ $ blank <$ pure ()
      pure ()
  }
