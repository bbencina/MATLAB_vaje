function [x] = regulafalsi(f, a0, b0)
  a = a0;
  b = b0;
  while 1
    c = (a*f(b) - b*f(a))/(f(b) - f(a));
    if c == 0
      break
    end
    if sign(a) ~= sign(c)
      b = c;
    else
      a = c;
    end
    
    if abs(a-b) < 1e15
      break
    end
  end
  x = c;
end
