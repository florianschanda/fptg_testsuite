;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +0
;;    input_kind_2 = +rnd_subnormal
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
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 15 115) (_ +zero 15 115))
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

(define-const input_2 (_ FloatingPoint 15 115) (fp #b0 #b000000000000000 #b000011111101010001111010010010000001101001111001100010110010101111100000110101100110110000101000110110111110000110))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 (_ FloatingPoint 15 115) (fp #b1 #b000011110101101 #b101111010011011100011101100010000101100011011011001101100100010100010010001101111110011001100001101010110110101100))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 15 115) (fp #b1 #b000011110101101 #b101111010011011100011101100010000101100011011011001101100100010100010010001101111110011001100001101010110110101100))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 115) (fp.fma RNA input_1 input_2 input_3))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
