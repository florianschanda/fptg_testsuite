;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = nextup(-1)
;;    operation = float_to_float
;;    precision_source = float8
;;    precision_target = float8
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

(define-const potato (_ FloatingPoint 3 5) (fp #b1 #b010 #b1111))
;; should be -0.96875
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 3 5) (fp #b1 #b010 #b1111))
;; should be -0.96875
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 3 5) ((_ to_fp 3 5) RTZ potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
