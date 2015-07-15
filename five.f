      PROGRAM five
      integer arr(1:20)
      logical res,isDiv
      integer countr
      countr = 20  
      res = .false.
      do i = 1,20
      arr(i) = i
C	  print*, arr(i)
      end do	
C      print *, arr	  
      do while(res .eqv. .false.)
      res =  isDiv(countr,arr,size(arr))
      countr =  1+ countr
      end do
      print*,res, " ", (countr-1)
      read(*,*)
      end program five
	  
      logical function isDiv(x, arr,n)
      integer x, td,ton
      integer arr(n)
      logical logE

C      print *, size(arr)
      do j = 1, n
      td = mod(x,j)
      logE = .not.(td.eq.0)
C      print *, logE
      if (logE) then
      isDiv =.false.
      return
      end if
      end do
      isDiv = .true.
      end