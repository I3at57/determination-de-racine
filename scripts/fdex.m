## Copyright (C) 2022 toussaib
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} fdex (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: toussaib <toussaib@pc04-p103>
## Created: 2022-03-25

function retval = fdex (xval)
% Function : x^3-10x+2
  retval = xval^3-10*xval+2;
endfunction
