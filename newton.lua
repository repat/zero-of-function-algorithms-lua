#!/usr/bin/lua

eta = 0.00001

function newton(x)
  local i = 0
  local diff = 1
  while (diff>eta) do
    nullstelle = x
    t1, t2 = f(x)
    x = x - (t1/t2)
    i = i+1
    diff = math.abs(x-nullstelle)
  end
  return x
end

function f(x)
  return x^6-x-1, 6*x^5-1
end
