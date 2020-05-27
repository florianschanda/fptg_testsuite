;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -max_normal
;;    operation = float_to_float
;;    precision_source = float8
;;    precision_target = random_ordered
;;    rounding_mode = RNE
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 3 5) (fp #b1 #b110 #b1111))
;; should be -15.5
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 10 15) (fp #b1 #b1000000010 #b11110000000000))
;; should be -15.5
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 10 15) ((_ to_fp 10 15) RNE potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
