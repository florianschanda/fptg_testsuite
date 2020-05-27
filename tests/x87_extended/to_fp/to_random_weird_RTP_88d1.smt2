;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +rnd_subnormal
;;    operation = float_to_float
;;    precision_source = x87_extended
;;    precision_target = random_weird
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

(define-const potato (_ FloatingPoint 15 64) (fp #b0 #b000000000000000 #b111111111001111001000011001110100101110111101000100011101100011))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 12 6) (fp #b0 #b000000000000 #b00001))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 12 6) ((_ to_fp 12 6) RTP potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
