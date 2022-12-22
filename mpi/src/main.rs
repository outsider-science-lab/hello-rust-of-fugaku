use libc::{c_int, c_char};

#[link(name = "mpi")]
extern "C" {
  fn MPI_Init(argc: *const c_int, argv: *const *const *const c_char) -> c_int;
  fn MPI_Finalize() -> c_int;
}
fn main() {
  let args: Vec<String> = std::env::args().collect();
  let argc = 0 as c_int;
  let argv = args[0].as_ptr() as *const c_char;
  let argv1 = &argv as *const *const c_char;
  unsafe {
    MPI_Init(&argc as *const c_int, &argv1 as *const *const *const c_char);
    println!("Initialized");
    MPI_Finalize();
  }
}
