 clockStart = clock;
    
    simDuration = 2000;
    modelName1 = 'letsplot';
    
    [t,x,y] = sim(modelName1, [0 simDuration]);
    
    clockEnd = clock;
    disp(['Run Time 1: ' num2str(clockEnd(4)-clockStart(4)) ' hr, ' ...
                       num2str(clockEnd(5)-clockStart(5)) ' min, ' ...
                       num2str(round(clockEnd(6)-clockStart(6))) ' sec.']);

    % "Analysis" here
    size(t)               
    size(y)              