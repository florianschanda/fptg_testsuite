;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_subnormal
;;    input_kind_2 = +inf
;;    input_kind_3 = -rnd_subnormal
;;    operation = fp.fma
;;    rounding_mode = RNE
;;
;; Test oracle(s) for this test:
;;    * MPFR 4.0.1 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 Float64 (fp #b1 #b00000000000 #b0000111000100000011001100101101011101100011111010001))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float64 (_ +oo 11 53))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_3 Float64 (fp #b1 #b00000000000 #b1101000011111011000110101010101101011110110011101111))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float64 (_ -oo 11 53))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result Float64 (fp.fma RNE input_1 input_2 input_3))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
