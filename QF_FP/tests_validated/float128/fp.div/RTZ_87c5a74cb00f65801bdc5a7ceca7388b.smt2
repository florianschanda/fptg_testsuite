;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_small
;;    input_kind_2 = +rnd_subnormal
;;    operation = fp.div
;;    rounding_mode = RTZ
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

(define-const input_1 Float128 (fp #b1 #b000100110100110 #b1000111100000011011000101111100110101101001010001101111001101100000010001100001110011001000111011111101110101011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b0 #b000000000000000 #b0110010111100110010010001000100100001110010100111111010111000011011100100101111101001110000100001011011000010111))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (fp #b1 #b100100110100101 #b1111010100110111010100110000110101111101010100011001101000001101011111010110110111110000011000111011000100110101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result Float128 (fp.div RTZ input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
