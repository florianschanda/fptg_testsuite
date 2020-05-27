;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = nextdown(-1)
;;    operation = float_to_float
;;    precision_source = tensorfloat32
;;    precision_target = random_ordered
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

(define-const potato (_ FloatingPoint 8 11) (fp #b1 #b01111111 #b0000000001))
;; should be -1.0009765625
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 6 12) (fp #b1 #b011111 #b00000000010))
;; should be -1.0009765625
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 6 12) ((_ to_fp 6 12) RTZ potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
