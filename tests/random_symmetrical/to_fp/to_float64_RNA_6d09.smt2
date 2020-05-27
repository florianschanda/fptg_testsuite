;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -max_normal
;;    operation = float_to_float
;;    precision_source = random_symmetrical
;;    precision_target = float64
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

(define-const potato (_ FloatingPoint 4 4) (fp #b1 #b1110 #b111))
;; should be -240.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result Float64 (fp #b1 #b10000000110 #b1110000000000000000000000000000000000000000000000000))
;; should be -240.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result Float64 ((_ to_fp 11 53) RNA potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
