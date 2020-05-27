;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +min_normal
;;    operation = float_to_float
;;    precision_source = random_symmetrical
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

(define-const potato (_ FloatingPoint 7 7) (fp #b0 #b0000001 #b000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 4 7) (fp #b0 #b0000 #b000001))
;; should be 0.000244140625
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 4 7) ((_ to_fp 4 7) RTP potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
