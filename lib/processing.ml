module A = Awesome

let doit () =
  let m = A.one_t in
  Printf.printf
    "%s: %s\n" "Status: "
    (m |> A.succ |> A.str_of_t)
