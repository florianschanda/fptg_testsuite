;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_subnormal
;;    input_kind_2 = -rnd_normal_small
;;    operation = fp.add
;;    rounding_mode = RNA
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 Float128 (fp #b0 #b000000000000000 #b0111101011011101010001101000011001010100110001001111011110110110000111101001000101111011110111011100001011110011))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b1 #b011100110110000 #b1110110101000110111010110101111000110110110001000110001010100000101100010110101010010110101010100100010111000100))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (fp #b1 #b011100110110000 #b1110110101000110111010110101111000110110110001000110001010100000101100010110101010010110101010100100010111000100))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float128 (fp.add RNA input_1 input_2))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
