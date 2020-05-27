;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -rnd_subnormal
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = float8
;;    rounding_mode = RTN
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 15 115) (fp #b1 #b000000000000000 #b010110101110101111001100010110101000100010000001011011001101010001001101011111110001001111001011101010001111010011))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 3 5) (fp #b1 #b000 #b0001))
;; should be -0.015625
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 3 5) ((_ to_fp 3 5) RTN potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
