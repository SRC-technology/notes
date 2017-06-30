```idris
data Alphabet = A | B | C | D | E | F | G | H | I | J | K

charToMaybeAlphabet : Char -> Maybe Alphabet

data Keyword : Type where
  MkKeyword : (identifier : Vect n Alphabet) -> Keyword

Cast Char Alphabet where
  'a' = 

Cast Char Digit where
  'a' = 

Encoding UTF8 where 
  letterCase c = ord c

makeAllAs : Alphabet -> Alphabet
makeAllAs _ = A

parse : Encoding encoding => (char : Char) -> {range = getRange char encoding} -> range
parse c {range=Alphabet}= makeAllAs
parse d = makeAllAs


parse 'e' {encoding=UTF8}

Symbol = (Alphabet, Vect n Alphanumeric)

symbol : (symbolCandidate : String) -> {range = getRange (unpack symbolCandidate)}
```

https://hackage.haskell.org/package/transformers-0.5.4.0/docs/Control-Monad-Trans-State-Strict.html
