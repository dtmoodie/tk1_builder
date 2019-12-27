all:
	(cd stage1; docker build -t jetsontk1_build:boost . --build-arg from=jetsontk1:base)
	(cd stage2; docker build -t jetsontk1:boost . --build-arg from=jetsontk1:base --build-arg build_from=jetsontk1_build:boost)
