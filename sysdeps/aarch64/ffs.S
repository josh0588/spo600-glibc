#include <sysdep.h>
    
    .text
    .global ffs
    .type ffs, @function
      
ffs:
    cmp   x0, #0
    b.eq  done
    rbit  x1, x0
    clz   x0, x1
    add   x0, x0, #1
done:
    ret
