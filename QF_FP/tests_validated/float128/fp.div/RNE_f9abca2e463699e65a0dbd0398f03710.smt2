;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_small
;;    input_kind_2 = -rnd_subnormal
;;    operation = fp.div
;;    rounding_mode = RNE
;;
;; Test oracle(s) for this test:
;;    * MPFR 4.0.1 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 Float128 (fp #b0 #b010000101010100 #b1100011001111010110001100001101001101001100111001110001010000000010100001110011010111110111011110101110000111111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b1 #b000000000000000 #b1100010100100111001010001000000010001001000001001110110000101100010111000111100011000110001110111110000111001000))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (fp #b1 #b110000101010011 #b0010011100010001001110001101100010100001101000011111110110000110100110011111111010111101100011000110101001100001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result Float128 (fp.div RNE input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
