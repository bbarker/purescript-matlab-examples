
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


function PS__main()
  % DEBUG:
  % psTmpFun = PS__myAdd();
  % psTmpFun = psTmpFun(3);
  % psRetVal = psTmpFun(5);

  psRetVal = Apply(@PS__myAdd, 3, 5);
%  tmp = {3, 5};
%  psRetVal = Apply(@PS__myAdd, tmp{:});
  disp(psRetVal);
end

function applyRetVal = Apply(psFun, varargin)
  psFunEvaled = psFun();
  applyRetVal = ApplyGo(psFunEvaled, varargin{:});
end

function applyRetVal = ApplyGo(psFun, varargin)
  if numel(varargin) > 1
    rest = varargin(2:end);
    psFunNext = psFun(varargin{1});
    applyRetVal = ApplyGo(psFunNext, rest{:});
  else
    applyRetVal = psFun(varargin{1});
  end
end
