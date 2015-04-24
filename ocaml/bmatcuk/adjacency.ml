(* adjacency.ml *)

(* We define adjacency as the longest run of identical pairs in a sequence. For
 * example, the adjacency of [0, 0, 0] is 2: [[0, 0], 0] and [0, [0, 0]].
 * Given a sequence of binary bits, where you must flip 1 bit, find the
 * adjacency. *)

open Printf;;

let adjacency ~lst =
  let rec consecutive m (cnt::cl) = function
    | hd::tl when hd = m -> consecutive m (cnt + 1::cl) tl
    | hd::tl -> consecutive hd (0::cnt::cl) tl
    | [] -> cnt::cl
  and adj f m = function
    | c1::0::c2::tl when c1 + c2 + 2 > m -> adj true (c1 + c2 + 2) (0::c2::tl)
    | c::tl when c > m -> adj false c tl
    | _::tl -> adj f m tl
    | [] when f -> m
    | [] -> m + 1
  and find_answer = function
    | [c] -> c
    | clst -> adj false 0 clst
  in
  match lst with
  | [] -> 0
  | [_] -> 0
  | hd::tl -> find_answer (consecutive hd [0] tl);;

let run l =
  let rec print_list out = function
    | [] -> ()
    | [i] -> output_string out (string_of_int i)
    | hd::tl -> fprintf out "%i; %a" hd print_list tl
  in
  printf "Adjacency of [%a] = %i\n" print_list l (adjacency l);;

let main () =
  let tests = [
    [0; 0; 0];
    [0; 0; 1; 0];
    [1; 0; 1; 0];
    [];
    [1];
    [0; 0; 0; 0; 1; 0; 0]
  ] in
  List.iter run tests;
  exit 0;;
main ();;

