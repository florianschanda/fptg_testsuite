;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_small
;;    input_kind_2 = -rnd_subnormal
;;    input_kind_3 = +rnd_normal_small
;;    operation = fp.fma
;;    rounding_mode = RTN
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

(define-const input_1 Float128 (fp #b1 #b000101000100110 #b1100110110100011111100011011111100100000100111101110111100101101101010010111010100000111011010100100100101100100))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b1 #b000000000000000 #b1001001010100111010010110111101111101100001110110101000000011000110100100101010000001011110111100000000111001101))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 Float128 (fp #b0 #b010101111011110 #b1110010001110011010011110111100111110001101111111000011000011010001111100111001100101000101010101100001100010011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (fp #b0 #b010101111011110 #b1110010001110011010011110111100111110001101111111000011000011010001111100111001100101000101010101100001100010011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float128 (fp.fma RTN input_1 input_2 input_3))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
