{-# LANGUAGE OverloadedStrings  #-}

import Orientdb.Core

main :: IO ()
main = do
  conn <- connectOrientDb
    defaultOrientDbConnectionInfo {
      orientDbUser = "root",
      orientDbPassword ="CHANGEME",
      orientDbDatabase = "GratefulDeadConcerts"}
  printConnection conn
  closeConnection conn
  return ()
