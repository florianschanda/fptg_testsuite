;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +inf
;;    input_kind_2 = -rnd_subnormal
;;    input_kind_3 = -rnd_normal_small
;;    operation = fp.fma
;;    rounding_mode = RTZ
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

(define-const input_1 Float128 (_ +oo 15 113))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b1 #b000000000000000 #b0011000101000100001111000111111010011110101110110100010111110011100111001011010011110001101000000101000000110011))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 Float128 (fp #b1 #b010000010010111 #b1110010110011001110000101101110000110001001010101000100101010101101110111110011110100011100011101000000111001010))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (_ -oo 15 113))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result Float128 (fp.fma RTZ input_1 input_2 input_3))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
