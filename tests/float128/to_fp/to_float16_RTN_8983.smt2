;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +1
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = float16
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

(define-const potato (_ FloatingPoint 15 115) (fp #b0 #b011111111111111 #b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
;; should be 1.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result Float16 (fp #b0 #b01111 #b0000000000))
;; should be 1.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result Float16 ((_ to_fp 5 11) RTN potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
