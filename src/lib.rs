#![no_std]

extern crate alloc;

pub mod bytecursor;
pub use crate::bytecursor::{
  ByteCursor,
  SeekFrom,
};
