#!/usr/bin/lua
eta = 0.00001

function secant(a,b)
  local i = 0
  while(math.abs(b-a)>eta) do
    nullstelle = b
    b = b-f(b)*(b-a)/(f(b)-f(a))
    a = nullstelle
    i = i+1
  end
  return ((a+b)/2)
end

function f(x)
  return x^6-x-1
end
