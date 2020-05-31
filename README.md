# FPTG Testsuite
This repository contains the canned output of
[FPTG](https://github.com/florianschanda/fp_test_generator/), since
running the tool takes a lot of time.

The repository contains [SMT-LIB](http://smtlib.cs.uiowa.edu) benchmarks
for the [theory of floating point](http://smtlib.cs.uiowa.edu/theories-FloatingPoint.shtml).
The main focus right now is verification, i.e. showing that your floating point
solver doesn't produce wrong answers. Performance benchmarks are really the
focus right now.

Benchmarks include the full theory (i.e. benchmarks for all five rounding modes, and
precisions that are not just single or double).

Benchmarks are included with the following features:
* Unspecified behaviour (in the case of min/max)
* All five rounding modes
* The following precisions

  * (_ FloatingPoint 3 5) (i.e. Float8)
  * Float16
  * (_ FloatingPoint 8 8) (i.e. BFloat16)
  * (_ FloatingPoint 8 11) (i.e. TensorFloat32)
  * Float32
  * Float64
  * (_ FloatingPoint 15 64) (i.e. x87 extended precision)
  * Float123
  
* Some (but not many) benchmarks also use weird and whacky precisions.
* Benchmarks are validated as many of the following test oracles as possible:

  * [PyMPF](https://github.com/florianschanda/PyMPF) (All benchmarks)
  * [MPFR](https://www.mpfr.org) (except for benchmarks using RNA)
  * Host (except for benchmarks using RNA, and only float32, float64, and x87_extended)

Currently all benchmarks are QF_FP, but in the future (as more tests are added)
we expect this to also include QF_FPBV and some logic involving reals and integers.
