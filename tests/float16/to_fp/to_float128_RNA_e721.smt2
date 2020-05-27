;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -max_normal
;;    operation = float_to_float
;;    precision_source = float16
;;    precision_target = float128
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

(define-const potato Float16 (fp #b1 #b11110 #b1111111111))
;; should be -65504.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 15 115) (fp #b1 #b100000000001110 #b111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
;; should be -65504.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 15 115) ((_ to_fp 15 115) RNA potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
