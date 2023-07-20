import System.Directory

main=do
     putStrLn"Enter file path to copy:"
     oldFile <- getLine
     putStrLn"Enter New name:"
     newFile <- getLine
     copyFile oldFile newFile
     putStrLn"File copied"
     