;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -min_normal
;;    operation = float_to_float
;;    precision_source = float64
;;    precision_target = float32
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

(define-const potato Float64 (fp #b1 #b00000000001 #b0000000000000000000000000000000000000000000000000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float32 (_ -zero 8 24))
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

(define-const computed_result Float32 ((_ to_fp 8 24) RTZ potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
