;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -min_normal
;;    operation = float_to_float
;;    precision_source = float16
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

(define-const potato Float16 (fp #b1 #b00001 #b0000000000))
;; should be -0.00006103515625
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 8 11) (fp #b1 #b01110001 #b0000000000))
;; should be -0.00006103515625
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 8 11) ((_ to_fp 8 11) RNA potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
