addpath(['purescript-matlab/src/Runtime']);

PS__main();
function psRetVal = PS__myAdd()
  function psRetVal1 = PS__nested2(x)
    function psRetVal2 = PS__nested3(y)
      psRetVal2 = x + y;
    end
    psRetVal1 = @(y) PS__nested3(y);
  end
  psRetVal = @(x) PS__nested2(x);
end
% function psRetVal = PS__main()
%   sumXY = Apply(@PS__myAdd, 3, 5);
%   sumStr = Apply(@Data_Show.PS__show, Data_Show.PS__showInt(), sumXY);
%   psRetVal = Apply(@Effect_Class_Console.PS__log, Effect_Class.PS__monadEffectEffect(), sumStr);
% end


function PS__main()
  psRetVal = Apply(@PS__myAdd, 3, 5);
  disp(psRetVal);
end

