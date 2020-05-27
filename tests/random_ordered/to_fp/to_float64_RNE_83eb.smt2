;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = nextup(+1)
;;    operation = float_to_float
;;    precision_source = random_ordered
;;    precision_target = float64
;;    rounding_mode = RNE
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 3 4) (fp #b0 #b011 #b001))
;; should be 1.125
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float64 (fp #b0 #b01111111111 #b0010000000000000000000000000000000000000000000000000))
;; should be 1.125
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float64 ((_ to_fp 11 53) RNE potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
