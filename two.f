      Programm two
      Integer fib1,fib2,sum,fib,b2
      sum=2
      fib=0
      fib1=1
      fib2=2
      do while( fib .lt. 4000000)
      fib=fib1+fib2
      fib1=fib2
      fib2=fib
C      Print *, fib
      b2 = mod(fib,2)
      If (b2.eq.0) then
      sum = sum + fib
      End if
      End do

      print *, sum
      End programm two
