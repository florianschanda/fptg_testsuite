;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -max_subnormal
;;    operation = float_to_float
;;    precision_source = tensorfloat32
;;    precision_target = float32
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

(define-const potato (_ FloatingPoint 8 11) (fp #b1 #b00000000 #b1111111111))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float32 (fp #b1 #b00000000 #b11111111110000000000000))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float32 ((_ to_fp 8 24) RNA potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
