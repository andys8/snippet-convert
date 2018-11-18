#!/usr/bin/env stack
-- stack --resolver lts-10.2 script

{-# LANGUAGE OverloadedStrings #-}

import Turtle
import Debug.Trace (trace, traceShow, traceShowId, traceShowM)
import Data.Maybe
import Data.Text

main :: MonadIO io => io ()
main = do
  args <- arguments
  case listToMaybe args of
    Just file -> do
        fileExists <- testfile $ fromText file
        if not fileExists then die "File doesn't exist"
        else do
          fileContent <- liftIO $ readTextFile $ fromText file
          mapM_ echo $ textToLines $ pack $ convertSnippets $ unpack fileContent
          return ()
    Nothing -> die "Filename has to be provided as param"


convertSnippets :: String -> String
convertSnippets lines = lines
