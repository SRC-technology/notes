module Main

import Data.Vect

%default total

Entry : Type
Entry = (String, String)

entries : Vect 4 Entry
entries =
  [ ("Int -> Nat", "content")
  , ("Int -> Nat", "content3")
  , ("Int -> Nat", "conten123t")
  , ("Nat -> Bool", "content2") ]

search : (query : String) -> (entries : Vect n Entry) -> (m ** Vect m String)
search query entries =
  let (len ** results) = filter (\(key, _) => key == query) entries
  in (len ** map snd results)

listToVect : List a -> (k : Nat ** Vect k a)
listToVect [] = (Z ** Nil)
listToVect (x :: xs) =
  let (k ** xs') = listToVect xs
  in (S k ** (x :: xs'))

fromMaybe : (whenNothing : a) -> Maybe a -> IO a
fromMaybe x Nothing = pure x
fromMaybe _ (Just x) = pure x

partial
main : IO ()
main =
  do arguments <- getArgs
     let (len ** query) = listToVect arguments
     case len of
       S (S k) =>
        let (len ** results) = search (head (tail query)) entries
        in putStrLn (foldl (++) "" (map ((++) "\n") results))
       _ => putStrLn "No arguments"
