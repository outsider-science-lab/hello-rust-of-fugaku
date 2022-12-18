fn main() {
  use mpi::request::WaitGuard;
  use mpi::traits::*;
  let universe = mpi::initialize().expect("Failed to initialize MPI.");
  println!("MPI: {}", universe.world().rank());
}
