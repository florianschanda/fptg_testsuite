;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -1
;;    operation = float_to_float
;;    precision_source = random_weird
;;    precision_target = bfloat16
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

(define-const potato (_ FloatingPoint 6 4) (fp #b1 #b011111 #b000))
;; should be -1.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 8 8) (fp #b1 #b01111111 #b0000000))
;; should be -1.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 8 8) ((_ to_fp 8 8) RTN potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
