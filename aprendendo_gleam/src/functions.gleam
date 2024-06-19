//// Here you gonna learn about functions

import gleam/io

/// the *pub fn* keyword its use to make functions public
/// if we only use the keyword *fn* the function will be private
pub fn main(){
  let first_number = 1
  let second_number = 2
  io.print("if you double the second_number value the result will be: ")
  io.debug(double(second_number))
  io.print("if you add twice to the first_number value, the result will be: ")
  io.debug(add_two(first_number, add_one))

  let secret_number = 42
  // this is an anonymous function
  let secret = fn(){ secret_number }
  io.print("This is an anonymous function return: ")
  io.debug(secret())
}

/// this is a private function, so you can only call in this file
/// in the parameters we put *: Int* so we are telling that we
/// are expecting an Integer, and after the parameters we put an
/// *-> Int*, telling that the output are going to be an Integer 
fn double (a: Int) -> Int {
  multiply(a, 2)
}

fn multiply(a: Int, b: Int) -> Int {
  a * b
}

/// Higher order function
fn add_two(argument: Int, passed_function: fn(Int) -> Int) -> Int {
  passed_function(passed_function(argument))
}

fn add_one(argument: Int) -> Int {
  argument + 1
}

pub fn fibonacci(a: Int) -> Int {
  case a {
    0 -> 0
    1 -> 1
    _ -> fibonacci(a - 1) + fibonacci(a - 2)
  }
}
