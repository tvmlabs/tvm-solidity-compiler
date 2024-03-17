contract C
{
	function f() public pure {
		uint x;
		for (uint i = 0; i < 3; ++i) {
			if (i > 1) {
				break;
 			}
			if (i >= 0) {
				x = 10;
				continue;
 			}
		}
		assert(x == 10);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 3
// ----
// Info 6002: BMC: 2 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
