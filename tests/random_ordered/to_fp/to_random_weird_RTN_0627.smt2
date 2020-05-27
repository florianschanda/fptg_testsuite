;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = nextdown(+1)
;;    operation = float_to_float
;;    precision_source = random_ordered
;;    precision_target = random_weird
;;    rounding_mode = RTN
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 4 5) (fp #b0 #b0110 #b1111))
;; should be 0.96875
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 12 8) (fp #b0 #b011111111110 #b1111000))
;; should be 0.96875
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 12 8) ((_ to_fp 12 8) RTN potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
