.PHONY: build

build:
	if [ -d "build" ]; then \
		cd build && make -j8; \
	else \
		mkdir build; \
		cd build && cmake .. && make -j8; \
	fi

clean:
	rm -rf build