;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -rnd_normal_large
;;    operation = float_to_float
;;    precision_source = float32
;;    precision_target = float64
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

(define-const potato Float32 (fp #b1 #b10001111 #b11101111011111010011010))
;; should be -126845.203125
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float64 (fp #b1 #b10000001111 #b1110111101111101001101000000000000000000000000000000))
;; should be -126845.203125
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float64 ((_ to_fp 11 53) RTP potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
