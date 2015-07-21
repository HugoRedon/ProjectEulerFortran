      program sixth
      integer sum,sum1,res
      sum1=0
      sum=0
      do i=1,100
        sum1 = sum1 + (i**2)
        sum = sum +i
      end do
      sum = sum**2
      res = sum-sum1
      
      print*,res
      read(*,*)
      end program sixth