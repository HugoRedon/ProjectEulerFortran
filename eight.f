      program eight
      integer*8 sum,i
	  logical isPrim
      i = 2
	  sum =0
      do while(i.lt.2000000)
        if(isPrim(i))then
	      sum = sum + i
	    end if
	    i = i + 1
	    if(mod(i,10000).eq.0)then
	      print*, i
	    end if
      end do
	  print*,sum
	  read(*,*)
      end program
	  
      logical function isPrim(p)
      integer*8 p, res
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