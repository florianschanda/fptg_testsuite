;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +max_subnormal
;;    operation = float_to_float
;;    precision_source = random_weird
;;    precision_target = tensorfloat32
;;    rounding_mode = RTP
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 6 5) (fp #b0 #b000000 #b1111))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 8 11) (fp #b0 #b01100000 #b1110000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 8 11) ((_ to_fp 8 11) RTP potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
