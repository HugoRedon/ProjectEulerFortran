      program Palindrome
      logical isPal
      integer mult,max
      character(len=20) str
      max=0
      
      do i =1,999
        do j=1,999
        mult = i*j
        write(str,*) mult
         if(isPal(str))then
            print*,i, " ", j, " ", mult
            if(mult.gt.max) then
            max =mult
            end if
         end if
        end do
      end do 
      
      
      print*,max
      pause
      end program
      
      logical function isPal(str)
      character(len=20) str,str1
      integer rev
      
      rev = 20
      str = trim(adjustl(str))
      do i =1,len(str)
      str1(i:i) = str(rev:rev)
      rev = rev -1
      end do
      isPal = trim(adjustl(str)).eq.trim(adjustl(str1))
      end