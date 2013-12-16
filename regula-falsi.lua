#!/usr/bin/lua

eta = 0.00001

function regula_falsi(a,b)
  local i = 0
  local diff = 1
  if (f(b)*f(a)<0) then
    nullstelle = a
    while (diff > eta) do
      x = (a*f(b)-b*f(a))/(f(b)-f(a));
      if (f(x)<0) then
        a = x
      else
        b = x
      end
      diff = math.abs(x-nullstelle)
      nullstelle = x
      i = i+1
    end
  end
  return nullstelle
end

function f(x)
  return x^6-x-1
end
