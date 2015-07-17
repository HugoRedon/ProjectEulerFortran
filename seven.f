      program seven
      logical isPrim
      integer countr,i
      integer primes(1:10010)
      countr=0
      i = 1
      do while(countr.lt.10010)
         i = i + 1
	     if(isPrim(i).eqv. .true.) then
              countr = countr + 1 
              primes(countr) = i		
C              print *, i			  
         end if
      end do
      print *, primes(10001)
      read(*,*)
      end program
	  
	  
      logical function isPrim(p)
      integer p, res
      do i = 2 , p-1
	  res = mod(p,i)
C	  print *, "res: ", res
      if ( res .eq. 0) then
C      print *, p, "is not prime number"
      isPrim = .false.
      return
      end if
      end do 
      isPrim = .true.
      return
      end 