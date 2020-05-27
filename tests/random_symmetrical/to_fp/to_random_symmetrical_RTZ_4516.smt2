;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -max_subnormal
;;    operation = float_to_float
;;    precision_source = random_symmetrical
;;    precision_target = random_symmetrical
;;    rounding_mode = RTZ
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 4 4) (fp #b1 #b0000 #b111))
;; should be -0.013671875
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 5 5) (fp #b1 #b01000 #b1100))
;; should be -0.013671875
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 5 5) ((_ to_fp 5 5) RTZ potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
