function ps__main()
    % DEBUG:
  psTmpFun = myAdd(3);
  psRetVal = psTmpFun(5);
  disp(psRetVal);
end

function psRetVal = myAdd(x)
  function psRetVal1 = myAdd1(y)
    psRetVal1 = x + y;
  end
  psRetVal = @(x) myAdd1(x);
end
