      program SecantMethod
      real Y,i,xn,xn_1,xn_2, tol
      
      do i= -10,10
C      print*, Y(i)
      end do
      
      tol = 10
      xn_2 = 2
      xn_1 = 6
      
      do while(tol.gt.1e-4)
      xn = xn_1 - Y(xn_1)*( (xn_1-xn_2) / (Y(xn_1)-Y(xn_2)) )
C      print*,xn
      tol = Y(xn)
      xn_2 = xn_1
      xn_1 = xn
      end do
      
      print*, xn
      read(*,*)
      end program
      
      real function Y(x)
      real x
      
      Y = x**2 - 3.0
      
      end function Y