;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +rnd_normal_large
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = random_weird
;;    rounding_mode = RTN
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 15 115) (fp #b0 #b101010010110011 #b110101011011110010001101000100110100111110101010010101000111100010001110110001101001111100000110110101100101010010))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 5 3) (fp #b0 #b11110 #b11))
;; should be 57344.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 5 3) ((_ to_fp 5 3) RTN potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
