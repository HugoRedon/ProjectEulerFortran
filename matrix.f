      program matrix
      integer u,w
      integer*8 max,top
      integer*8 mult
      character(50) line
      character(1000) n
      parameter(u=1)
      max = 0
      n=""
      open(u,FILE='matrix.txt',STATUS='OLD')
      do i=1,20
        read(u,*)line
C        print*,line
        n = trim(adjustl(n))//trim(adjustl(line))
      end do      
      close(u)

      do i=1,(1000-12)
       top = mult(i,n)
       if(top.gt.max)then
        w =i
        max = top
       endif
       end do
       
       print*,max," ",w

      read(*,*)
      end program matrix
            
      integer*8 function mult(k, n)
      integer k
      integer*8 num
      character(1000) n   
      mult =1
      do j = 0,12
        read(n(k+j:k+j),*)num
        mult = mult* num
      end do     
      end function mult