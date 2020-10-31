program convert_FSP
  implicit none
  integer:: nx, ny, x0, y0, x, y, wi, jtn, icm, i, j
  real   :: dx, dy, dip, wr
  real, allocatable:: slip(:,:), vector(:,:), lat(:,:), lon(:,:), depth(:,:)
  real, allocatable:: sliptwicm(:,:,:,:), sliptw(:,:,:), slipcum(:,:), ew(:,:), ns(:,:)
  real, parameter  :: pi=3.14159265
  character(len=50):: cha
  
  open(10, file='fort.40', status='old', action='read')
  read(10, *)
  read(10, *) 
  read(10, *) 
  read(10, *) wr, dip
  read(10, *)
  read(10, *) dx, dy, nx, ny, x0, y0, wr, jtn
  read(10, *)
  read(10, *)
  read(10, *)
  allocate(slip(1:nx,1:ny), vector(1:nx,1:ny))
  do y = ny, 1, -1
     read(10, *) (slip(x, y), x = 1, nx)
  end do
  read(10, *)
  do y = ny, 1, -1
     read(10, *) (vector(x, y), x = 1, nx)
  end do

  write(6, *) sum(vector(1:nx,1:ny)) / (nx*ny)


  
  do i = 1, 4+ny*3
     read(10, *)
  end do

  allocate(sliptwicm(1:nx, 1:ny, 1:jtn, 1:2), sliptw(1:nx, 1:ny, 1:jtn))
  do j = 1, jtn
     do icm = 1, 2
     read(10, *) cha
        do y = ny, 1, -1
           read(10, *) (sliptwicm(x, y, j, icm), x = 1, nx)
        end do
     end do
  end do
  do j = 1, jtn
     do x = 1, nx
        do y = 1, ny
           sliptw(x, y, j) = sqrt(sliptwicm(x, y, j, 1)**2 +  sliptwicm(x, y, j, 2)**2)
        end do
     end do
  end do
  close(10)
  
  open(20, file='knot_value.dat', status='old', action='read')
  open(40, file='XY_FSP.txt', status='old', action='read')
  allocate(lat(1:nx,1:ny), lon(1:nx,1:ny), depth(1:nx,1:ny), ew(1:nx,1:ny), ns(1:nx,1:ny))
  write(6, *) nx, ny
  do y = 1, ny
     do x = 1, nx
        read(20, *) wi, wi, lat(x, y), lon(x, y), depth(x, y)
        read(40, *) ew(x, y), ns(x, y)
     end do
  end do
  close(20)

  
  open(30, file='para_FSP.txt', status='replace', action='write')
  open(40, file='OUT_FSP.txt', status='replace', action='write')
  write(30, '(a1,8a7)', advance='no') "%", "LAT", "LON", "X==EW", "Y==NS", "Z", "SLIP", "RAKE", ""
  
  do j = 1, jtn
     write(30, '("TW",i2,"   ")', advance='no') j
  end do
  write(30, *) '  ' 
  write(30, '(a1,a99)') '%', '--------------------------------------------------------------------------------------------------'
  do y = ny, 1, -1
     do x = 1, nx
!        ew = (x - x0) * dx; ns = (y - y0) * dy + dy/2
        write(30, '(1000f11.4)') lat(x, y), lon(x, y), ew(x, y), ns(x, y), &
             depth(x, y), slip(x, y), vector(x, y), (sliptw(x, y, j), j = 1, jtn)
        write(40, '(7f11.4)') lat(x, y), lon(x, y), ew(x, y), ns(x, y), &
             depth(x, y), slip(x, y), vector(x, y)
     end do
  end do
  close(30)

!  allocate(slipcum(1:nx, 1:ny))
!  do x = 1, nx
!     do y = 1, ny
!        slipcum(x, y) = sum(sliptw(x, y, 1:jtn))
!     end do
!  end do
!  write(6, *) maxval(slipcum(1:nx,1:ny)), maxval(slip(1:nx, 1:ny))
  
end program convert_FSP
