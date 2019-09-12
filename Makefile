TARGET=dhcp_client_test
SOURCES=$(wildcard *.c)
OBJECTS=$(patsubst %.c, %.o, $(SOURCES))
CFLAGS = -I.
.PHONY:
all: clean $(TARGET)
clean:
	@rm -rf $(OBJECTS)
	@rm -rf $(TARGET)
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $(OBJECTS) $(LDFLAGS)
