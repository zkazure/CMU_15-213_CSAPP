;;; Directory Local Variables            -*- no-byte-compile: t -*-
;;; For more information see (info "(emacs) Directory Variables")

((c-ts-mode . ((compile-command . "make && ./build/btest -f isTmax && ./bddcheck/check.pl -f isTmax && ./dlc -e bits.c && ./driver.pl "))))
