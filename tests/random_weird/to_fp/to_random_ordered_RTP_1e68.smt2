;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = nextdown(+1)
;;    operation = float_to_float
;;    precision_source = random_weird
;;    precision_target = random_ordered
;;    rounding_mode = RTP
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 6 3) (fp #b0 #b011110 #b11))
;; should be 0.875
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 7 11) (fp #b0 #b0111110 #b1100000000))
;; should be 0.875
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 7 11) ((_ to_fp 7 11) RTP potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
