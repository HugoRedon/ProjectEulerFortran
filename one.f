       programm one
       integer sum,b3,b5

       sum = 0
       do i = 0,999,1

       b3 = mod(i,3)
       b5 = mod(i,5)
       if (b3.EQ.0 .OR. b5.EQ.0) then

       sum = sum + i

       end if

       end do
       print *,"sum: ", sum
       end programm one
