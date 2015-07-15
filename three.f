      program three
      logical isPrim, sp
      integer reslt      
      integer*8 numb
      numb = 600851475143_8
      reslt = 1
      print *, "start"
      do i = 1, 10000
C      print *, i,":",isPrim(i)
      if (isPrim(i) .and. (mod(numb,i).eq.0)) then
      reslt = i
      print *,"i: ",i, " reslt: ", reslt
      end if
      end do 
      read(*,*)
      end program three
      
	  
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