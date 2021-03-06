;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = nextup(-1)
;;    operation = float_to_float
;;    precision_source = float16
;;    precision_target = float8
;;    rounding_mode = RNA
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato Float16 (fp #b1 #b01110 #b1111111111))
;; should be -0.99951171875
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 3 5) (fp #b1 #b011 #b0000))
;; should be -1.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 3 5) ((_ to_fp 3 5) RNA potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
