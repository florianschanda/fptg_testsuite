;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = NaN
;;    input_kind_2 = +0
;;    input_kind_3 = -rnd_normal_small
;;    operation = fp.fma
;;    rounding_mode = RTN
;;
;; Test oracle(s) for this test:
;;    * Host (Intel(R) Core(TM) i7-7820HQ CPU @ 2.90GHz)
;;    * MPFR 4.0.1 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 Float32 (_ NaN 8 24))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : True
;;   isNegative  : False
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_2 Float32 (_ +zero 8 24))
;; should be 0.0
;;   isZero      : True
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const input_3 Float32 (fp #b1 #b00011110 #b10101010011000000101110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float32 (_ NaN 8 24))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : True
;;   isNegative  : False
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result Float32 (fp.fma RTN input_1 input_2 input_3))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
