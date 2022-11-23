open Processing

let isUtop () =
  String.split_on_char '/' Sys.executable_name
  |> List.exists (fun x -> x  = "utop")

let () =
  if  not(isUtop ()) then
    Processing.doit ()
