import gleam/io

/// main function
pub fn vars(){
  // to declare a var we use *let* keyword
  let my_var = 15
  // in this case my_var its a integer, to print a integer in the console, we use debug function from the io package.
  io.print("this is my_var value: ")
  io.debug(my_var)
  // we can use the debug in a pipeline too
  "This is a debug in a pipe"
  |> io.debug
  // in gleam we have 4 main types of values, integer, boolean, floats and strings. exists more types. 
  let my_string = "this is a string"
  let _my_float = 1.5 // this is a float
  let _my_bool = True // this is a boolean
  // we can use debug to print everything, but for strings we can also use print and println from the io package. 
  io.print(my_string)
  io.println(", same line as my_string")
  io.println("another line!")
  // Sometimes debug will will print later, or before print. 
}

pub fn operator(){
  io.debug({2 == 2}) // Equal
  io.debug({3 != 2}) // Not Equal
  io.debug({3 > 2}) // Greater then (Only int)
  io.debug({2.1 >. 1.5}) // Greater than (Only float)
  // From now on, to use those operator in float we need to put a dot in the end
  io.debug({3 < 2}) // Less than 
  io.debug({3 >= 2}) // Greater or Equal
  io.debug({3 <= 2}) // Less or Equal
  io.debug({3 + 2}) // Add 
  io.debug({3 - 2}) // Subtract 
  io.debug({3 * 2}) // Multiply 
  io.debug({3 / 2}) // Divide 
  io.debug({3 % 2}) // Remainder (Módulo) 
  // Boolean Operators 
  io.debug({True && False}) // AND
  io.debug({True || False}) // OR
  // Others
  io.debug({"Olá" <> ", " <> "Mundo"}) // Concat (ONLY STRINGS)
  io.debug("|>") // Pipe operator, for Pipe operations
}
