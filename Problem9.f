      module submodule

      contains

      real function sum(a,b)
      real a,b
      sum = a + b + cc(a,b)
      return 
      end function

      real function cc(a,b)
      real a,b
      cc = sqrt(a**2+ b**2)
      return
      end function
      

      end module submodule



      program PythagoreanTriplet
      use submodule
      integer a,b
      
       do a = 1,1000
         do b = 1, 1000
           if(sum(real(a),real(b)) .eq. 1000) then 
             print*, real(a)*real(b)*cc(real(a),real(b))
           end if
         end do
       end do
      end program
      
