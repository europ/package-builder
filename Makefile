make: all

#################################
# CREATE

.PHONY: all
all: clean
	@docker-compose up --build

.PHONY: rpm
rpm: clean-rpm
	@docker-compose up --build rpm

.PHONY: deb
deb: clean-deb
	@docker-compose up --build deb

#################################
# CLEAN

.PHONY: clean
clean:
	@rm -fv ./build/*.deb ./build/*.rpm

.PHONY: clean-rpm
clean-rpm:
	@rm -fv ./build/*.rpm

.PHONY: clean-deb
clean-deb:
	@rm -fv ./build/*.deb
