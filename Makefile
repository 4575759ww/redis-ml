all:
	$(MAKE) -C ./src all

test:
	$(MAKE) -C ./src $@

clean:
	$(MAKE) -C ./src $@

package: all
	$(MAKE) -C ./src package

deploydocs:
	mkdocs build
	s3cmd sync site/ s3://redisml.io
.PHONY: deploydocs