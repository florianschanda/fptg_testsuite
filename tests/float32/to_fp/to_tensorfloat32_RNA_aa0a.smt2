;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -max_normal
;;    operation = float_to_float
;;    precision_source = float32
;;    precision_target = tensorfloat32
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

(define-const potato Float32 (fp #b1 #b11111110 #b11111111111111111111111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 8 11) (_ -oo 8 11))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 8 11) ((_ to_fp 8 11) RNA potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
