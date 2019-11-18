
val f : int -> int -> int
(*@ r = f y x *)

val f : y:int -> int -> int
(*@ r = f ~y x *)

val f : ?y:int -> int -> int
(*@ r = f ?y x *)

val f : y:int -> ?x:int -> int
(*@ r = f ~y ?x *)

val f : ?y:int -> x:int -> int
(*@ r = f ?y ~x *)

val f : ('a -> 'b -> 'c) -> 'a -> ('b -> 'c)
(*@ r = f x y z *)

val f : x:('a -> 'b -> 'c) -> 'a -> ('b -> 'c)
(*@ r = f ~x y z *)

val f : x:('a -> 'b -> 'c) -> y:'a -> ('b -> 'c)
(*@ r = f ~x ~y z *)

val f : x:('a -> 'b -> 'c) -> y:'a -> ('b -> 'c)
(*@ r = f ~x [w:int] ~y z *)

val f : x:('a -> 'b -> 'c) -> y:'a -> ('b -> 'c)
(*@ r = f ~x [w:int] ~y [p:integer] z *)

val f : x:('a -> 'b -> 'c) -> y:'a -> ('b -> 'c)
(*@ r,[a:'a] = f ~x [w:int] ~y [p:integer] z *)

val f : x:('a -> 'b -> 'c) -> y:'a -> ('b -> 'c)
(*@ [b:integer],r,[a:'a] = f ~x [w:int] ~y [p:integer] z *)

val f : x:('a -> 'b -> 'c) -> y:'a -> ('b -> 'c)
(*@ [b:integer],r,[a:'a] = f ~x [w:int] ~y [p:integer] z *)
