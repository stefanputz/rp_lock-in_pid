#
# Red Pitaya specific application Makefile.
#

APP=lock-in+pid

-include _settings.env
-include _build_number

# If you want to set specific variables use the file: settings.env
#
# i.e.
#
# RPIP=rp-XXXXXX.local
# RPOPTS=-l root -p 2022
# RPSCP=-P 2022

RPOPTS ?= -l root

# Versioning system
BUILD_NUMBER ?= 0
REVISION ?= devbuild
VER:=$(shell cat $(APP)/info/info.json | grep version | sed -e 's/.*:\ *\"//' | sed -e 's/-.*//')

INSTALL_DIR ?= .

folder=$(CURDIR:%/=%)


CFLAGS += -DVERSION=$(VER)-$(BUILD_NUMBER) -DREVISION=$(REVISION)
export CFLAGS


.PHONY: clean

all:
	$(MAKE) -C $(APP)

clean:
	$(MAKE) -C $(APP) clean