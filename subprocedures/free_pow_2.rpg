**free
CTL-OPT dftactgrp(*NO);
// Prototype for procedure FUNCTION. This is optional
DCL-PR square INT(10);
  num INT(5) VALUE;
END-PR;
// Main code
dsply square(5);
*inlr = *on;
// Function implementation
DCL-PROC square;
  DCL-PI *N INT(10);
    num INT(5) VALUE;
  END-PI;
  DCL-S Result INT(10);
  Result = num ** 2;
  return Result;
END-PROC;
