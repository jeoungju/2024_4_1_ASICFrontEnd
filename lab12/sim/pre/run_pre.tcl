vcs \
	-full64 -debug_acc+all -kdb \
	+define+SDF_PRE \
	+neg_tchk \
	+maxdelays \
	-timescale=1ns/1ps \
	+lint=TFIP-L \
	-f run_pre.f \
	-l run_pre.log

./simv
