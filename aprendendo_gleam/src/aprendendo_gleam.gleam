import gleam/io
import vars
import functions
pub fn main() {
  // io.println("Olá, mundo!")
  // vars.vars()
  // vars.operator()
  // functions.main()
  io.debug(functions.fibonacci(10))
}
