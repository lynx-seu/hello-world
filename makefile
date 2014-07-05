cc = gcc
cflags = -O2 -Wall -std=c99

target = helloworld.exe
obj = helloworld.o 

inc =  
lib =  

# ---------------------------------------------- #
$(target) : $(obj)
	$(cc) -o $@ $(obj) $(lib)

$(obj): %.o: %.c
	$(cc) -c $(cflags) $(inc) $< -o $@

.PHONY:clean
clean:
	@echo "clean..."
	-rm -rf $(obj) $(target)
