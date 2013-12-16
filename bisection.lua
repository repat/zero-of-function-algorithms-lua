#!/usr/bin/lua

eta = 0.00001

function bisection(a,b)
  local i = 0
	
  if (f(b)*f(a)<0) then
    while (math.abs(b-a)>eta) do
      if (f((a+b)/2)*f(a)>0) then
        a = ((a+b)/2)
      else
        b = ((a+b)/2)
      end
      i = i + 1
    end
    return ((a+b)/2)
  end
end

function f(x)
  return x^6-x-1
end
