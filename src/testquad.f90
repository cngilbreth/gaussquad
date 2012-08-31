! Copyright (c) 2012 Christopher N. Gilbreth
!
! Permission is hereby granted, free of charge, to any person obtaining a copy
! of this software and associated documentation files (the "Software"), to deal
! in the Software without restriction, including without limitation the rights
! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
! copies of the Software, and to permit persons to whom the Software is
! furnished to do so, subject to the following conditions:
!
! The above copyright notice and this permission notice shall be included in all
! copies or substantial portions of the Software.
!
! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
! SOFTWARE.

program testquad
  use gaussquad
  implicit none

  integer, parameter :: n = 5

  real(8) :: w(n), x(n)
  integer :: i

  write (*,'(a)') "# Legendre for n=5:"
  write (*,'(a,t22,a)') "# x(i)","   w(i)"

  call cpquad(n,0.d0,"Legendre",w,x)
  do i=1,n
     write (*,"(es20.12,tr2,es20.12)") x(i), w(i)
  end do

  write (*,'(a)') ""
  write (*,'(a)') "# Laguerre for n=5, alpha=0:"
  write (*,'(a,t22,a)') "# x(i)","   w(i)"

  call cpquad(n,0.d0,"Laguerre",w,x)
  do i=1,n
     write (*,"(es20.12,tr2,es20.12)") x(i), w(i)
  end do


  write (*,'(a)') ""
  write (*,'(a)') "# Laguerre for n=5, alpha=1/2:"
  write (*,'(a,t22,a)') "# x(i)","   w(i)"

  call cpquad(n,0.5d0,"Laguerre",w,x)
  do i=1,n
     write (*,"(es20.12,tr2,es20.12)") x(i), w(i)
  end do


  write (*,'(a)') ""
  write (*,'(a)') "# Hermite for n=5:"
  write (*,'(a,t22,a)') "# x(i)","   w(i)"

  call cpquad(n,0.d0,"Hermite",w,x)
  do i=1,n
     write (*,"(es20.12,tr2,es20.12)") x(i), w(i)
  end do


end program testquad
