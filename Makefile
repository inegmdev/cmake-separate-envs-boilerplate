lib:
	mkdir -p Build/cmake_env1
	cd Build/cmake_env1 && cmake ../../cmake_env1
	cd Build/cmake_env1 && cmake --build .
.PHONT: lib

app:
	mkdir -p Build/cmake_env2
	cd Build/cmake_env2 && cmake ../../cmake_env2
	cd Build/cmake_env2 && cmake --build .
.PHONT: app


build: lib app
.PHONY: build

clean:
	rm -rf Build
	mkdir -p Build/cmake_env1
	mkdir -p Build/cmake_env2

.PHONY: clean


run:
	./Build/cmake_env2/app
.PHONY: run