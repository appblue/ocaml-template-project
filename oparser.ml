open Processing

let not_utop () =
  String.split_on_char '/' Sys.executable_name
  |> List.exists (fun x -> x  = "utop")
  |> not

let () =
  if  not_utop () then
    Processing.doit ()
