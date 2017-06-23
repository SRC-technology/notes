> How to do a parser in Idris: https://github.com/edwinb/Blodwen/blob/master/src/Parser/Lexer.idr

Notes on how to structure the stored data:

```
/lisp/Int/Nat/MyModule/intToNat
/lisp/Int/Nat/MyModule/intToNat2

MyModule.intToNat

/lisp/name/printLn/0 -> /lisp/signed/Int/Nat/**/printLn
/lisp/name/printLn/1 -> /lisp/signed/Int/Bool/**/printLn
```
