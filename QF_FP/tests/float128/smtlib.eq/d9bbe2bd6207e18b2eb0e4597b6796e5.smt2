;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_large
;;    input_kind_2 = +rnd_normal_large
;;    operation = smtlib.eq
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 Float128 (fp #b0 #b110100100111111 #b1100001100010011000110100011011111000111110001000011010110011100010010100110100111100111100101001001001110010010))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const input_2 Float128 (fp #b0 #b100101010001010 #b0011001111101101101001110101000000011100001101000111000111011011100001001101000011000001101111110011000101000001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result Bool false)

(define-const computed_result Bool (smtlib.eq input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
