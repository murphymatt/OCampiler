open Core
open String


let command =
    Command.basic ~summary:"Compiler program"
    (let open Command.Let_syntax in
    [%map_open
    (* flags *)
    let lengthF = flag "length" no_arg ~doc:"Show length of each input"
    (* anonymous arguments *)
    and args = anon (sequence ("ARGS" %: string))
    in
    fun () ->
        (* command body *)
        match lengthF with
        | false -> List.iter args (fun s -> Printf.printf "%s\n" s)
        | true  -> List.iter args (fun s -> Printf.printf "%i\n" (length s))
    ])


let () = Command.run ~version:"1.0" ~build_info:"RWO" command
