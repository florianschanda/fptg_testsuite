;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -min_subnormal
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = float16
;;    rounding_mode = RTZ
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato Float128 (fp #b1 #b000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float16 (_ -zero 5 11))
;; should be -0
;;   isZero      : True
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result Float16 ((_ to_fp 5 11) RTZ potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
