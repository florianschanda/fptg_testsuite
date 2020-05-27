;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -rnd_normal_small
;;    operation = float_to_float
;;    precision_source = float32
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

(define-const potato Float32 (fp #b1 #b01100001 #b00111111001001110111110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 7 7) (fp #b1 #b0100001 #b001111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 7 7) ((_ to_fp 7 7) RTZ potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
