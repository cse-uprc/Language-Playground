// This program is an introduction to functional programming and F#
// When run, the program will take user input for an integer and output
// "Hello World" for the number the user input
open System

[<EntryPoint>]
let main argv =
    let n = Console.ReadLine() |> int
    
    let rec printHello(n) =
        if n>0 then
            printfn "Hello World"
            printHello(n-1)
    printHello(n)        
    0  
