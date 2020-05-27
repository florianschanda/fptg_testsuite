;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = nextdown(+1)
;;    operation = float_to_float
;;    precision_source = random_symmetrical
;;    precision_target = float128
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

(define-const potato (_ FloatingPoint 5 5) (fp #b0 #b01110 #b1111))
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

(define-const expected_result (_ FloatingPoint 15 115) (fp #b0 #b011111111111110 #b111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
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

(define-const computed_result (_ FloatingPoint 15 115) ((_ to_fp 15 115) RNE potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
