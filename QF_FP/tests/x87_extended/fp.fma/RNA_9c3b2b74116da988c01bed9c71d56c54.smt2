;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_large
;;    input_kind_2 = NaN
;;    input_kind_3 = -rnd_normal_small
;;    operation = fp.fma
;;    rounding_mode = RNA
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 15 64) (fp #b1 #b100101100011001 #b111101110001010001101000101101110100110111110101111010111110101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const input_2 (_ FloatingPoint 15 64) (_ NaN 15 64))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : True
;;   isNegative  : False
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_3 (_ FloatingPoint 15 64) (fp #b1 #b011111011000001 #b110000001000110100100000111111001111100110011001111011111101010))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 15 64) (_ NaN 15 64))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : True
;;   isNegative  : False
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 64) (fp.fma RNA input_1 input_2 input_3))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
